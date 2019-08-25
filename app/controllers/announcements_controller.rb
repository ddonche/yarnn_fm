class AnnouncementsController < ApplicationController
	before_action :authenticate_user!
	before_action :record_owner, only: [:edit, :update, :destroy]
	
	def new
        @announcement = current_user.build_announcement
        respond_to do |format| 
          format.html
          format.js
        end
	end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def create
    
    @user = current_user
    @announcement = Announcement.create(announcement_params)
    @user.announcement = @announcement
    
    respond_to do |format|
      if @announcement.save
        Event.create!(eventable_id: @announcement.id, user_id: current_user.id,
                                    eventable_type: "announcement")  
          
        format.html { redirect_to current_user, notice: 'Announcement was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    @announcement = Announcement.find(params[:id])
    respond_to do |format|
      if @announcement.update(announcement_params)
        Event.create!(eventable_id: @announcement.id, user_id: current_user.id,
                                    eventable_type: "announcement_update")
                                    
        format.html { redirect_to current_user, notice: 'Announcement was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to current_user, notice: 'Announcement was successfully deleted.' }
      format.json { head :no_content }
    end
  end

	private
	
	def record_owner
	  @announcement = Announcement.find(params[:id])
    unless @announcement.user_id == current_user.id
      flash[:notice] = 'Access denied as you are not creator of this announcement'
      redirect_to root_path
    end
  end
	
  def announcement_params
    params.require(:announcement).permit(:body, :user_id, :title)
  end
end