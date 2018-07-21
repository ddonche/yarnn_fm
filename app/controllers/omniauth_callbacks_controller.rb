class OmniauthCallbacksController < Devise::OmniauthCallbacksController

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