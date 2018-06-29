class FavoritesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_track

  def favorite
    @track.favorites.where(user_id: current_user.id).first_or_create
    respond_to do |format|
      format.html { redirect_to @track }
      format.js
    end
  end 
  
  def unfavorite
    @track.favorites.where(user_id: current_user.id).destroy_all
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