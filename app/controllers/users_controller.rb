class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :payout, :payment]
  before_action :set_user, except: [:index, :payout, :payment, :add_card]

  def index
    @users = User.where.not(username: [nil, ""]).order(created_at: :desc).page(params[:page]).per(24)
    @popular_users = User.order('favorited_count DESC').page(params[:page]).per(24)
  end
  
  def show
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @page_title = @user.username
    @tracks = @user.tracks.order('created_at DESC').page(params[:page]).per(4)
    @albums = @user.albums.order('created_at DESC').page(params[:page]).per(6)
    @listings = @user.listings.order('created_at DESC').page(params[:page]).per(6)
    @blogs = @user.blogs.order('created_at DESC').page(params[:page]).per(4)
    @topics = @user.topics.order('created_at DESC').page(params[:page]).per(4)
    @reviews = @user.reviews.order('created_at DESC').page(params[:page]).per(4)
    @link = @user.link
    @users = @user.followers.limit(20)
    @followed_users = @user.following.limit(20)
  end
  
  def favorites
    @pseudonyms = @user.pseudonyms.order('created_at DESC')
    @users = @user.followers
    @followed_users = @user.following
    @favorite_items = @user.favorite_tracks.page(params[:page]).per(24)
  end
  
  def followers
    @title = "Followers"
    @users = @user.followers
    render 'show_follow'
  end
  
  def following
    @title = "Following"
    @users = @user.following
    render 'show_follow'
  end
  
  def payout
    if !current_user.uid.blank?
      account = Stripe::Account.retrieve(current_user.uid)
      @login_link = account.login_links.create()
    end
  end
  
  private
  
  def set_user
    @user = User.friendly.find(params[:id])
  end
  
end