class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    
    Activity.create!(followed_id: @user.id, user_id: current_user.id,
                                  activity_type: "follow")
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow(@user)
    
    Activity.create!(followed_id: @user.id, user_id: current_user.id,
                                  activity_type: "unfollow")
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end