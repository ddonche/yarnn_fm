class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  
  def index 
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @page_title = @user.username
    @tracks = @user.tracks.order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @users = @user.followers
    @followed_users = @user.following
    
    @activity = current_user.activities.build
    @feed_items = current_user.feed.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
    respond_to do |format| 
      format.html
      format.js
    end
  end
  
  private
  
  def set_user
    @user  = current_user
  end
  
end