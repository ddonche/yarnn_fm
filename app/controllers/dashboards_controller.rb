class DashboardsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user
  
  def index 
    @pseudonym = Pseudonym.find_by(params[:pseudo_id])
    @pseudo = Pseudonym.find_by(params[:pseudo_id])
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @page_title = @user.username
    @tracks = @user.tracks.order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @users = @user.followers
    @followed_users = @user.following
  end
  
  private
  
  def set_user
    @user  = current_user
  end
  
end