class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  before_action :set_notifications
  
  private
  def set_notifications
    if user_signed_in?
      @notifications = Notification.where({ read: false, recipient_id: current_user.id })
    end
  end
end
