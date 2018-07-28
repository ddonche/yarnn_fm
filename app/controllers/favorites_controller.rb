class FavoritesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_track

  def favorite
    @track.favorites.where(user_id: current_user.id).first_or_create
      unless current_user.id == @track.user_id
      Notification.create!(track_id: @track.id, 
                                  recipient_id: @track.user_id, notified_by_id: current_user.id, 
                                  notification_type: "favorite")
      end
      @track.increment!(:favorites_count)
      @track.user.increment!(:favorited_count)
    respond_to do |format|
      format.html { redirect_to @track }
      format.js
    end
  end 
  
  def unfavorite
    @track.favorites.where(user_id: current_user.id).destroy_all
    @track.decrement!(:favorites_count)
    @track.user.decrement!(:favorited_count)
    respond_to do |format|
      format.html { redirect_to @track }
      format.js
    end
  end
	
	private

	def find_track
		@track = Track.find(params[:track_id])
	end

end