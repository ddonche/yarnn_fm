class CommentsController < ApplicationController
  before_action :load_commentable
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @comments = @commentable.comments.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
  end

  def new
    @comment = @commentable.comments.new
    respond_to do |format|               
      format.js
    end
  end
  
  def create
    @comment = @commentable.comments.new(allowed_params) 
    @comment.user_id = current_user.id if current_user
    if @comment.save
      
      Activity.create!(parent_id: @commentable.id, item_id: @comment.id, user_id: current_user.id,
                                  activity_type: "comment")
      
      unless current_user.id == @commentable.user_id
      Notification.create!(commentable_id: @commentable.id, comment_id: @comment.id, 
                                  recipient_id: @commentable.user_id, notified_by_id: current_user.id, 
                                  notification_type: "comment", commentable_type: @comment.commentable_type)
      end
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
  end
  
  def update
    @comment = Comment.find(params[:id])
    respond_to do |format|
      if @comment.update(allowed_params)
        format.html { redirect_to @commentable, notice: 'Comment was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @commentable, notice: 'Comment was eradicated.' }
    end
  end

  private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  
  def allowed_params
    params.require(:comment).permit(:content, :user_id)
  end
end