class NotificationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @notifications = Notification.where({ read: false, recipient_id: current_user.id }).order('created_at DESC').page(params[:page]).per(24)
  end
  
  def toggle_read
    @notification = Notification.find(params[:id])
    if @notification.unread?
      @notification.read! 
    elsif @notification.read?
      @notification.unread!
    end
    redirect_to notifications_path
  end
end