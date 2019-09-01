class FavoritesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_track

  def favorite
    Favorite.create!(user_id: current_user.id, favorited_user_id: @track.user_id, track_id: @track.id)

    unless current_user.id == @track.user_id
      @track.user.increment!(:favorited_count)
      
      Event.create!(eventable_id: @track.id, user_id: current_user.id,
                                  eventable_type: "favorite")
      Notification.create!(notifiable_id: @track.id, 
                                  recipient_id: @track.user_id, notified_by_id: current_user.id, 
                                  notifiable_type: "favorite")
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
      
      Event.create!(eventable_id: @track.id, user_id: current_user.id,
                                  eventable_type: "unfavorite")
                                  
      Notification.create!(notifiable_id: @track.id, 
                                  recipient_id: @track.user_id, notified_by_id: current_user.id, 
                                  notifiable_type: "unfavorite")
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