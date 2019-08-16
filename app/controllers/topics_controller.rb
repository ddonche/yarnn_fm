class TopicsController < ApplicationController
	before_action :find_topic, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    if params[:tag]
      @topics = Topic.tagged_with(params[:tag]).includes(:latest_comment).order('created_at DESC').page(params[:page]).per(2)
    else
      @topics = Topic.all.order('created_at DESC').page(params[:page]).per(16)
    end
    if user_signed_in?
      @topic = current_user.topics.build
    end
	end

  def show
    @tag = @topic.tag_list
    @genre = @tag.split.map(&:capitalize).join(' ')
    
    @tag_id = Tag.where(name: @tag)
    @topics_count = Tagging.where(tag_id: @tag_id, taggable_type: "Topic").count
    @track_count = Tagging.where(tag_id: @tag_id, taggable_type: "Track").count
    @listing_count = Tagging.where(tag_id: @tag_id, taggable_type: "Listing").count
	  @commentable = @topic
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
    @topics = Topic.tagged_with(@tag).includes(:latest_comment).order("created_at DESC").page(params[:page]).per(3)
    
  end
	
	def new
    @topic = current_user.topics.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
  end

  def create
    @topic = current_user.topics.build(topic_params)
    @genre_pre1 = request.path.split('/').last
    @genre = @genre_pre1.gsub('%20', ' ')

    respond_to do |format|
      if @topic.save
        Event.create!(eventable_id: @topic.id, user_id: current_user.id, eventable_type: "topic")
                                  
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.js
      else
        format.html { redirect_back(fallback_location: root_path, alert: "There was a problem. Try again later.") }
      end
    end
  end

  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Topic was successfully deleted.' }
    end
  end
  
  def upvote
    if @topic.user != current_user
      @topic.upvote_by current_user
    
      respond_to do |format|
        format.html { redirect_to @topic }
        format.js
      end
    end
  end
  
  def downvote
    if @topic.user != current_user
      @topic.downvote_by current_user
  
      respond_to do |format|
        format.html { redirect_to @topic }
        format.js
      end
    end
  end

	private
  	def find_topic
  		@topic = Topic.find(params[:id])
  	end
  	
    def topic_params
      params.require(:topic).permit(:content, :title, :tag_list)
    end
end