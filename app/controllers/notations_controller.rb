class NotationsController < ApplicationController
  before_action :set_comment
  before_action :set_commentable
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @notations = @comment.notations
  end

  def new
    @notation = @comment.notations.new
  end
  
  def create
    @notation = @comment.notations.new(notation_params) 
    @notation.user_id = current_user.id if current_user
    if @notation.save
      redirect_to @commentable
    else
      render :new
    end
  end
  
  def edit   
    @notation = Notation.find(params[:id])
  end
  
  def update
    respond_to do |format|
      if @notation.update(notation_params)
         format.html { redirect_to :back }
      else
         format.html { render :edit }
      end
    end
  end

  def destroy
    @notation = Notation.find(params[:id])
    @notation.destroy
    respond_to do |format|
      format.html { redirect_to @commentable, notice: 'Reply was eradicated.' }
    end
  end
  
  def upvote
    if @notation.user_id != current_user.id
      @notation.upvote_by current_user
      
      redirect_to(:back)
    end
  end
  
  def downvote
    if @notation.user_id != current_user.id
      @notation.downvote_by current_user
      
      redirect_to(:back)
    end
  end

  private
  
  def set_comment
    @comment = Comment.find(params[:comment_id])
  end
  
  def set_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end
  
  def notation_params
    params.require(:notation).permit(:content, :user_id, :comment_id)
  end
end