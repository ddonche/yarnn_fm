class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  before_action :set_notifications
  before_action :store_location, :unless => :devise_controller?

  private
  def set_notifications
    if user_signed_in?
      @notifications = Notification.where({ read_status: false, recipient_id: current_user.id })
    end
  end
  
  # override the devise helper to store the current location so we can
  # redirect to it after loggin in or out. This override makes signing in
  # and signing up work automatically.
  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end
  
  def after_sign_in_path_for(resource)
    if session[:previous_url] == root_path
      dashboard_path
    else
      session[:previous_url] || dashboard_path
    end
  end
end
