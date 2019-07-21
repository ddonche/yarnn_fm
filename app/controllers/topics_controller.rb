class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pseudo = Pseudonym.find_by(params[:pseudo_id])
    if user_signed_in?
      @topic = current_user.topics.build
    end
    if params[:tag]
      @topics = Topic.tagged_with(params[:tag]).order('created_at DESC').paginate(:page => params[:page], :per_page => 2)
    else
      @topics = Topic.all.order('created_at DESC')
    end
    respond_to do |format| 
      format.html
      format.js
    end
  end

  def show
    if @topic.pseudo_id?
      @pseudo = Pseudonym.find(@topic.pseudo_id)
    end
    @tag = @topic.tag_list
    @topics_count = Topic.tagged_with(@tag).count
	  @commentable = @topic
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
    @topics = Topic.tagged_with(@tag).order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @topic = current_user.topics.build
    @genre = request.path.split('/').last
    respond_to do |format| 
      format.html
      format.js
    end
  end

  def edit
  end

  def create
    @topic = current_user.topics.build(topic_params)
    @genre = request.path.split('/').last
    respond_to do |format|
      if @topic.save
        
        Activity.create!(eventable_id: @topic.id, user_id: current_user.id, eventable_type: "topic")
                                  
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:content, :title, :tag_list, :pseudo_id)
    end
end