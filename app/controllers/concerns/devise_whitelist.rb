module DeviseWhitelist 
  extend ActiveSupport::Concern
  
  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :email, :password, :password_confirmation, :name, :publisher_type])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :username, :email, :password, :password_confirmation, :name, :image, :bio, :uid, :stripe_id, :publisher_type, :user_type, :website
    ])
    devise_parameter_sanitizer.permit(:accept_invitation, keys: [:email])
  end
end