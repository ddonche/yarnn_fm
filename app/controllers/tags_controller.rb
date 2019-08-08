class TagsController < ApplicationController

  def index
    #@tags = Tag.most_used(100).page(params[:page]).per(24)
    @track_count = Track.tagged_with(params[:tag]).count
  end
  
  def show
    @genre_pre1 = request.path.split('/').last
    @genre_pre2 = @genre_pre1.gsub('%20', ' ')
    @genre = @genre_pre2.split.map(&:capitalize).join(' ')
    @style = @genre.split.map(&:downcase).join('_')
    
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(24)
    @topics = Topic.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(24)
    @listings = Listing.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(24)

    @tag_id = Tag.where(name: @genre_pre2)
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
    @topics = Topic.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(3)
    @listings = Listing.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(12)
  end
  
  private
	
end