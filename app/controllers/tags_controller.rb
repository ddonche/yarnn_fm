class TagsController < ApplicationController
  
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(100)
  end
  
  def show
    @tracks = Track.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @tag_count = Track.tagged_with(params[:tag]).count
    @tag = ActsAsTaggableOn::Tag.name
    def current_url
      url_for :only_path
    end
  end
  
  private
  
end