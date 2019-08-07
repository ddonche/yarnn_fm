class TagsController < ApplicationController

  def index
    #@tags = Tag.most_used(100).page(params[:page]).per(24)
    @track_count = Track.tagged_with(params[:tag]).count
    
    
    def track_count
      Track.tagged_with(params[:tag]).count
    end
    
    def listing_count
      Listing.tagged_with(params[:tag]).count
    end
    
    def topic_count
      Topic.tagged_with(params[:tag]).count
    end
    
  end
  
  def show
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').page(params[:page]).per(24)
    @track_count = Track.tagged_with(params[:tag]).count
    @topics_count = Topic.tagged_with(params[:tag]).count
    @listings_count = Listing.tagged_with(params[:tag]).count
    
    @genre_pre = request.path.split('/').last.titleize
    @genre = @genre_pre.gsub('%20', ' ')
    
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