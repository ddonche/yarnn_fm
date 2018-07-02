class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if user_signed_in?
      @topic = current_user.topics.build
    end
    if params[:tag]
      @topics = Topic.tagged_with(params[:tag])
    else
      @topics = Topic.all.order('created_at DESC')
    end
    respond_to do |format| 
      format.html
      format.js
    end
  end

  def show
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
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render :show, status: :created, location: @topic }
        format.js
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Topic was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:content, :title, :tag_list)
    end
end