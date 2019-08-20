class WikisController < ApplicationController
	before_action :find_wiki, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	before_action :authenticate_user!, except: [:index, :show]

	def index
	end

	def show
    @user = @wiki.user
    @commentable = @wiki
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
    @flag = Flag.new
    if user_signed_in?
      @user_flag = Flag.where(flagged_by_id: current_user.id, flaggable_id: @wiki.id)
    end
	end
	
	def new
    @wiki = current_user.wikis.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

    def edit
    end
    
    def create
      @wiki = current_user.wikis.build(wiki_params)
      respond_to do |format|
        if @wiki.save
            Event.create!(eventable_id: @wiki.id, user_id: current_user.id,
                                    eventable_type: "wiki")
    
            format.html { redirect_to @wiki, notice: 'Wiki article was successfully created.' }
            format.js
        else
            format.html { render :new }
            format.js
        end
      end
    end

    def update
        respond_to do |format|
            if @wiki.update(wiki_params)
                format.html { redirect_to @wiki, notice: 'Article was successfully updated.' }
            else
                format.html { render :edit }
            end
        end
    end

    def destroy
        @wiki.destroy
        respond_to do |format|
            format.html { redirect_to wikis_path, notice: 'Article was successfully deleted.' }
            format.json { head :no_content }
        end
    end
  
  def upvote
    if @wiki.user != current_user
      @wiki.upvote_by current_user
    
      respond_to do |format|
        format.html { redirect_to @wiki }
        format.js
      end
    end
  end
  
  def downvote
    if @wiki.user != current_user
      @wiki.downvote_by current_user
  
      respond_to do |format|
        format.html { redirect_to @wiki }
        format.js
      end
    end
  end

	private
	def find_wiki
		@wiki = Wiki.find(params[:id])
	end
	
  def wiki_params
    params.require(:wiki).permit(:title, :body, :user_id)
  end
end