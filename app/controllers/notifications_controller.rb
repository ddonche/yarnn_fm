class NotificationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @notifications = Notification.where({ read_status: false, recipient_id: current_user.id }).order('created_at DESC').page(params[:page]).per(24)
  end
  
  def toggle_read
    @notification = Notification.find(params[:id])
    if @notification.read_status.unread?
      @notification.read_status.read! 
    elsif @notification.read_status.read?
      @notification.read_status.unread!
    end
    redirect_to notifications_path
  end
end