class TagsController < ApplicationController
  
  def index
    @tags = ActsAsTaggableOn::Tag.most_used(100)
  end
  
  def show
    @albums = Album.tagged_with(params[:tag]).order('created_at DESC')
    @tag_count = Album.tagged_with(params[:tag]).count
    @tag = ActsAsTaggableOn::Tag.name
    def current_url
      url_for :only_path
    end
  end
  
  private
  
end