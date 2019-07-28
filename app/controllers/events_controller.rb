class EventsController < ApplicationController
  before_action :find_user, only: [:index]

  def index
    @events = Event.where({ user_id: @user.id }).order('created_at DESC').page(params[:page]).per(24)
  end
  
	private

	def find_user
		@user = User.find(params[:id])
	end
end