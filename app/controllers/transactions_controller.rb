class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def sales
    @transactions = Transaction.all.where(seller: current_user).order("created_at DESC")
  end

  def purchases
     @transactions = Transaction.all.where(buyer: current_user).order("created_at DESC").page(params[:page]).per(24)
     @pseudo = Pseudonym.find_by(params[:pseudo_id])
  end

  def new
    @transaction = Transaction.new
    @listing = Listing.find(params[:listing_id])
    @purchased = Transaction.all.where(buyer: current_user, listing_id: @listing.id)
    @price = @listing.price * 100
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.buyer_id = current_user.id
    @listing = Listing.find(params[:listing_id])
    @seller = @listing.user
    @transaction.listing_id = @listing.id
    @transaction.seller_id = @seller.id

    @total_amount = (@listing.price * 100).to_i
    if user_signed_in? && current_user.stripe_subscription_id?
      @charged_fee = (@listing.price * 8 - 30).to_i
    else
      @charged_fee = (@listing.price * 15 - 30).to_i
    end
    @transferred_amount = (@listing.price - @charged_fee).to_i

    charge_error = nil

    if @transaction.valid?
      begin
        if !current_user.stripe_id.blank?
          customer = Stripe::Customer.retrieve(current_user.stripe_id)
        else
          customer = Stripe::Customer.create(
            :email => params[:stripeEmail],
            :source  => params[:stripeToken],
          )
          current_user.stripe_id = customer.id
          current_user.save
        end

        charge = Stripe::Charge.create(
          customer: customer.id,
          amount: @total_amount,
          description: @listing.title,
          currency: 'usd',
          transfer_data: {
            destination: @seller.uid,
          },
          application_fee: @charged_fee
        )

      rescue Stripe::CardError => e
        charge_error = e.message
      end
      if charge_error
        flash[:error] = charge_error
        respond_to do |format|
          format.html { render :new }
        end
      else
        @transaction.save

        Event.create!(eventable_id: @listing.id, user_id: current_user.id,
                                  eventable_type: "purchase")

        Notification.create!(notifiable_id: @listing.id,
                                recipient_id: @listing.user_id, notified_by_id: current_user.id,
                                notification_type: "purchase")
        respond_to do |format|
          format.html { redirect_to purchases_path, notice: 'Transaction successful. You may now download this.' }
        end
      end
    else
      flash[:error] = 'one or more errors in your order'
      render :new
    end
  end


  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @listing, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.fetch(:transaction, {})
    end
end
