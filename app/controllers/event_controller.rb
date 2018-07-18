class EventController < ApplicationController
  before_action :authenticate_user!
  #this action gets called after a user creates their Stripe acc
  def stripe_callback
          options = {
            site: 'https://connect.stripe.com',
            authorize_url: '/oauth/authorize',
            token_url: '/oauth/token'
          }
          code = params[:code]
          client = OAuth2::Client.new(ENV['STRIPE_CLIENT_ID'], ENV['STRIPE_SECRET_KEY'], options)
          @resp = client.auth_code.get_token(code, :params => {:scope => 'read_write'})
          @access_token = @resp.token
          @user.update!(stripe_uid: @resp.params["stripe_user_id"]) if @resp
          flash[:notice] = "Your account has been successfully created and is ready to process payments!"
  end

  #this is where a user will be able to see their balance info
  def payment_profile
    @user = current_user
    @account = Stripe::Account.retrieve("#{@user.stripe_uid.to_s}") if @user.stripe_uid.present?
    @balance = Stripe::Balance.retrieve() if @user.stripe_uid.present?
  end
end