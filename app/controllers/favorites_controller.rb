class FavoritesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_track

  def favorite
    @track.favorites.where(user_id: current_user.id).first_or_create
    
    unless current_user.id == @track.user_id
      @track.user.increment!(:favorited_count)
      
      Activity.create!(item_id: @track.id, user_id: current_user.id,
                                  activity_type: "favorite")
      Notification.create!(track_id: @track.id, 
                                  recipient_id: @track.user_id, notified_by_id: current_user.id, 
                                  notification_type: "favorite")
    end
    
    @track.increment!(:favorites_count)
    
    respond_to do |format|
      format.html { redirect_to @track }
      format.js
    end
  end 
  
  def unfavorite
    @track.favorites.where(user_id: current_user.id).destroy_all
      
    unless current_user.id == @track.user_id
      @track.user.decrement!(:favorited_count) unless @track.user.favorited_count.zero?
      
      Activity.create!(item_id: @track.id, user_id: current_user.id,
                                  activity_type: "unfavorite")
                                  
      Notification.create!(track_id: @track.id, 
                                  recipient_id: @track.user_id, notified_by_id: current_user.id, 
                                  notification_type: "unfavorite")
    end
    
    @track.decrement!(:favorites_count) unless @track.favorites_count.zero?
    
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