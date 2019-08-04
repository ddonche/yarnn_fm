class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:followed_id])
    current_user.follow(@user)
    
    Event.create!(followed_id: @user.id, user_id: current_user.id,
                                  eventable_type: "follow")
    Notification.create!(recipient_id: @user.id, notified_by_id: current_user.id,
                                  notifiable_type: "follow")                              
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow(@user)
    
    Event.create!(followed_id: @user.id, user_id: current_user.id,
                                  eventable_type: "unfollow")
    Notification.create!(recipient_id: @user.id, notified_by_id: current_user.id,
                                  notifiable_type: "unfollow")                               
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end