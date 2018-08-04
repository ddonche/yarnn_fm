class ActivitiesController < ApplicationController
  before_action :find_user, only: [:index]

  def index
    @activities = Activity.where({ user_id: @user.id }).order('created_at DESC')
  end
  
	private

	def find_user
		@user = User.find(params[:id])
	end
end