class LinksController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	
	def new
        @link = current_user.build_link
        respond_to do |format| 
          format.html
          format.js
        end
	end

  def edit
    @link = Link.find(params[:id])
  end

  def create
    
    @user = current_user
    @link = Link.create(link_params)
    @user.link = @link
    
    respond_to do |format|
      if @link.save
        format.html { redirect_to current_user, notice: 'Links were successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    @link = Link.find(params[:id])
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to current_user, notice: 'Links were successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Links were successfully deleted.' }
      format.json { head :no_content }
    end
  end

	private
	
  def link_params
    params.require(:link).permit(:website, :facebook, :twitter, :instagram, :youtube,
                                  :amazon, :patreon, :snapchat, :vimeo,
                                  :soundcloud, :itunes, :stitcher)
  end
end