class BlogsController < ApplicationController
	before_action :find_blog, only: [:show, :edit, :update, :delete]
	before_action :authenticate_user!, except: [:index, :show]

	def index
     @blogs = Blog.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
	end

	def show
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
        format.html { redirect_to @blog, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
        format.js
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
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
		@blog = Blog.friendly.find(params[:id])
	end
	
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :explicit,
                                  :avatar, :published_status)
  end
end