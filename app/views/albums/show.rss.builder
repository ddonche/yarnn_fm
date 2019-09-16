if @album.pseudonym_id? 
    album_author = @album.pseudonym.name
else
    album_author = @album.user.name 
end

title = @album.title
author = album_author
description = @album.description
keywords = 
ext = 'mp3'

#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"

xml.rss :version => "2.0", "xmlns:itunes" => "http://www.itunes.com/dtds/podcast-1.0.dtd",  "xmlns:media" => "http://search.yahoo.com/mrss/", "xmlns:atom" => "http://www.w3.org/2005/Atom" do
  xml.channel do
    xml.tag!("atom:link",  "href"=>"#{album_url(@album)}.rss", "rel"=>"self", "type"=>"application/rss+xml") 
    xml.title title
    xml.link album_url(@album)
    xml.description description
    xml.language 'en'
    xml.pubDate @tracks.first.created_at.to_s(:rfc822)
    xml.lastBuildDate @tracks.first.created_at.to_s(:rfc822)
    xml.itunes :author, author
    xml.itunes :keywords, keywords
    xml.itunes :explicit, 'clean'
    xml.itunes :image, :href => @album.image.url
    xml.itunes :owner do
      xml.itunes :name, author
      xml.itunes :email, @album.user.email
    end
    xml.itunes :block, 'no'
    xml.itunes :category, :text => 'Arts' do
      xml.itunes :category, :text => 'Literature'
    end

    @tracks.each do  |track|
      if track.pseudonym
        @track_author = track.pseudonym.name
      else 
        @track_author = track.user.name 
      end
      
      xml.item do
        xml.title track.title
        xml.description strip_tags(track.body.to_s)
        xml.pubDate track.created_at.to_s(:rfc822)
        xml.enclosure :url => track.audio, :length => track.duration, :type => 'audio/mp3'
        xml.link track_url(track)
        xml.itunes :author, @track_author
        xml.guid({:isPermaLink => "true"}, track_url(track))
        xml.itunes :subtitle, truncate(strip_tags(track.body.to_s), length: 150)
        xml.itunes :summary, truncate(strip_tags(track.body.to_s), length: 250)
        if track.explicit == "standard"
            @explicit = 'no' 
        else 
            @explicit = 'yes' 
        end
        xml.itunes :explicit, @explicit
        # Need to get the duration
        xml.itunes :duration, track.duration
      end
    end
  end
end