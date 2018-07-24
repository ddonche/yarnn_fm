class TagsController < ApplicationController
  
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(100).paginate(:page => params[:page], :per_page => 24)
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
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @tag_count = Track.tagged_with(params[:tag]).count
    @topics_count = Topic.tagged_with(params[:tag]).count
    @listings_count = Listing.tagged_with(params[:tag]).count
    @tag = ActsAsTaggableOn::Tag.name
    @genre = request.path.split('/').last
    @pseudo = Pseudonym.find_by(params[:pseudo_id])
    def current_url
      url_for :only_path
    end
    if user_signed_in?
      @topic = current_user.topics.build
      respond_to do |format| 
        format.html
        format.js
      end
    end
    @topics = Topic.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 3)
    @listings = Listing.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 12)
  end
  
  private
  
end