class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  before_action :set_user, except: [:index]

  def index
    @users = User.order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
  end
  
  def show
    @pseudonym = Pseudonym.find_by(params[:pseudo_id])
    @pseudo = Pseudonym.find_by(params[:pseudo_id])
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @page_title = @user.username
    @tracks = @user.tracks.order('created_at DESC').paginate(:page => params[:page], :per_page => 24)
    @users = @user.followers
    @followed_users = @user.following
  end
  
  def favorites
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @users = @user.followers
    @followed_users = @user.following
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
  
  def albums 
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @users = @user.followers
    @followed_users = @user.following
    @albums = @user.albums.paginate(:page => params[:page], :per_page => 24)
  end
  
  def listings 
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @pseudonym = Pseudonym.find_by(params[:pseudo_id])
    @users = @user.followers
    @followed_users = @user.following
    @listings = @user.listings.paginate(:page => params[:page], :per_page => 24)
  end
  
  def blogs 
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @users = @user.followers
    @followed_users = @user.following
    @blogs = @user.blogs.paginate(:page => params[:page], :per_page => 24)
  end
  
  private
  
  def set_user
    @user  = User.friendly.find(params[:id])
  end
  
end