class FavoritesController < ApplicationController
	before_action :authenticate_user!
	before_action :find_track

  def favorite
    @track.favorites.where(user_id: current_user.id).first_or_create
    respond_to do |format|
      format.html { redirect_to @track, notice: 'You favorited this.' }
      format.js
    end
	end 
	
	private

	def find_track
		@track = Track.find(params[:track_id])
	end
	
  def blog_params
    params.require(:blog).permit(:title, :content, :user_id, :explicit,
                                  :avatar, :published_status)
  end
end