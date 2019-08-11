module DeviseWhitelist 
  extend ActiveSupport::Concern
  
  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :email, :password, :password_confirmation, :publisher_type])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :username, :email, :password, :password_confirmation, :name, :image, :bio, :uid, :stripe_id, :publisher_type, :user_type
    ])
  end
end