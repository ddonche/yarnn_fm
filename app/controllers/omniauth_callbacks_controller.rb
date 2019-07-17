class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
  
  def googleAuth
    # Get access tokens from the google server
    access_token = request.env["omniauth.auth"]
    user = User.from_omniauth(access_token)
    log_in(user)
    
    # Access_token is used to authenticate request made from the rails application to the google server
    user.google_token = access_token.credentials.token
    
    # Refresh_token to request new access_token
    # Note: Refresh_token is only sent once during the first request
    refresh_token = access_token.credentials.refresh_token
    user.google_refresh_token = refresh_token if refresh_token.present?
    user.save
    redirect_to root_path
  end

  def stripe_connect
    auth_data = request.env["omniauth.auth"]
    @user = current_user
    
    if @user.persisted?
      @user.uid = auth_data.uid
      @user.save
      
      if !@user.uid.blank?
        # update payment schedule
        account = Stripe::Account.retrieve(current_user.uid)
        account.payout_schedule.monthly_anchor = 15
        account.payout_schedule.interval = "monthly"
        account.save
      end
      sign_in_and_redirect @user, event: :authentication
      flash[:notice] = "Stripe account created and connected" if is_navigational_format?
    else
      session["devise.stripe_connect_data"] = request.env["omniauth.auth"]
      redirect_to dashboard_path
    end
  end

  def failure
    # If we do get failures we should probably handle them more explicitly than just rerouting to root. To review in the future with colo
    redirect_to root_path
  end
end