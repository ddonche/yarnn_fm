class TagsController < ApplicationController

  def index
    #@tags = Tag.most_used(100).page(params[:page]).per(24)
    #@track_count = Track.tagged_with(params[:tag]).count
  end
  
  def show
    @genre_pre1 = request.path.split('/').last
    @genre_pre2 = @genre_pre1.gsub('%20', ' ')
    @genre = @genre_pre2.split.map(&:capitalize).join(' ')
    @style = @genre.split.map(&:downcase).join('_')
    
    @tag_id = Tag.where(name: @genre_pre2)
    
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(12)
    @topics = Topic.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(12)
    @active = Topic.tagged_with(params[:tag]).order('last_comment_at DESC').limit(8)
    @listings = Listing.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(12)

    @topics_count = Tagging.where(tag_id: @tag_id, taggable_type: "Topic").count
    @track_count = Tagging.where(tag_id: @tag_id, taggable_type: "Track").count
    @listing_count = Tagging.where(tag_id: @tag_id, taggable_type: "Listing").count
    
    @pseudo = Pseudonym.find_by(params[:pseudo_id])
    def current_url
      url_for :only_path
    end
    if user_signed_in?
      @topic = current_user.topics.build
    end
  end
  
  private
	
end