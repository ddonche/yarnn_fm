class SubscriptionsController < ApplicationController
  before_action :authenticate_user!, except: [:new, :create]
  before_action :redirect_to_signup, only: [:new]
  
  def new
    if user_signed_in? && current_user.stripe_subscription_id?
      redirect_to root_path, notice: "You are already a subscriber"
    end
  end
  
  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']

    plan_id = "plan_FdaxciAS6kvV5j"
    plan = Stripe::Plan.retrieve(plan_id)
    token = params[:stripeToken]

    customer = if current_user.stripe_id?
                Stripe::Customer.retrieve(current_user.stripe_id)
               else
                Stripe::Customer.create(email: current_user.email, source: token)
              end

    subscription = customer.subscriptions.create(plan: plan.id)

    options = {
      stripe_id: customer.id,
      stripe_subscription_id: subscription.id,
    }

    current_user.update(options)

    redirect_to root_path, notice: "Your subscription was setup successfully!"
  end

  def destroy
    customer = Stripe::Customer.retrieve(current_user.stripe_id)
    customer.subscriptions.retrieve(current_user.stripe_subscription_id).delete
    current_user.update(stripe_subscription_id: nil)

    redirect_to root_path, notice: "Your subscription has been cancelled."
  end
  
  private

    def redirect_to_signup
      if !user_signed_in?
        session["user_return_to"] = new_subscription_path
        redirect_to new_user_registration_path
      end
    end
end