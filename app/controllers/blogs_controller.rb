class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :delete]
	before_action :authenticate_user!, except: [:index, :show]

	def index
	  @pseudo = Pseudonym.find_by(params[:pseudo_id])
    @blogs = Blog.all.order("created_at DESC").page(params[:page]).per(24)
	end

	def show
	  @user = @blog.user
    if @blog.pseudo_id?
      @pseudo = Pseudonym.find(@blog.pseudo_id)
    end
    @blogs = Blog.where(user_id: @user.id).order("created_at DESC").page(params[:page]).per(5)
	  @users = @user.followers
    @followed_users = @user.following
	  @commentable = @blog
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
	end
	
	def new
    @blog = current_user.blogs.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    respond_to do |format|
      if @blog.save
        if @blog.published_status == "published"
          Event.create!(eventable_id: @blog.id, user_id: current_user.id,
                                    eventable_type: "blog")
        end
        
        format.html { redirect_to @blog, notice: 'Post was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Post was successfully deleted.' }
      format.json { head :no_content }
    end
  end

	private

	def find_blog
		@blog = Blog.find(params[:id])
	end
	
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :explicit,
                                  :pseudo_id, :image, :published_status)
  end
end