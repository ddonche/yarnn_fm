class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_user, except: [:index]

  def index
    @users = User.order('created_at DESC')
  end
  
  def show
    @page_title = @user.username
    @tracks = @user.tracks.order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @users = @user.followers
    @followed_users = @user.following
  end
  
  def favorites
    @favorite_items = @user.favorite_tracks.paginate(:page => params[:page], :per_page => 24)
  end
  
  def following
    @title = "Following"
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @users = @user.followers
    render 'show_follow'
  end
  
  def blogs 
    @users = @user.followers
    @followed_users = @user.following
    @blogs = @user.blogs.paginate(:page => params[:page], :per_page => 24)
  end
  
  private
  
  def set_user
    @user  = User.friendly.find(params[:id])
  end
  
end