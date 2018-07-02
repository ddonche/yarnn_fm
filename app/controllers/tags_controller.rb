class TagsController < ApplicationController
  
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(100)
  end
  
  def show
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @tag_count = Track.tagged_with(params[:tag]).count
    @tag = ActsAsTaggableOn::Tag.name
    @genre = request.path.split('/').last
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
    if params[:tag]
      @topics = Topic.tagged_with(params[:tag])
    else
      @topics = Topic.all.order('created_at DESC')
    end
  end
  
  private
  
end