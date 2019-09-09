class SponsorshipsController < ApplicationController
  before_action :set_sponsorship, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def sales
    @sponsorships = sponsorship.all.where(seller: current_user).order("created_at DESC")
  end

  def sponsorships
     @sponsorships = sponsorship.all.where(buyer: current_user).order("created_at DESC").page(params[:page]).per(24)
     @pseudo = Pseudonym.find_by(params[:pseudo_id])
  end

  def new
    @sponsorship = sponsorship.new
    @track = Track.find(params[:track_id])
    @sponsored = sponsorship.all.where(buyer: current_user, track_id: @track.id)
    @amount = params[:amount]
  end

  def create
    @sponsorship = sponsorship.new(sponsorship_params)
    @sponsorship.buyer_id = current_user.id
    @track = Track.find(params[:track_id])
    @seller = @track.user
    @sponsorship.track_id = @track.id
    @sponsorship.seller_id = @seller.id

    @total_amount = (@amount * 100).to_i
    @transferred_amount = (@amount - 30).to_i

    charge_error = nil

    if @sponsorship.valid?
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
          description: @track.title,
          currency: 'usd',
          transfer_data: {
            destination: @seller.uid,
          },
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
        @sponsorship.save

        Event.create!(eventable_id: @track.id, user_id: current_user.id,
                                  eventable_type: "sponsorship")

        Notification.create!(notifiable_id: @track.id,
                                recipient_id: @track.user_id, notified_by_id: current_user.id,
                                notification_type: "sponsorship")
        respond_to do |format|
          format.html { redirect_to purchases_path, notice: 'Sponsorship successful. Thank you for helping authors continue creating.' }
        end
      end
    else
      flash[:error] = 'one or more errors in your transaction'
      render :new
    end
  end


  def update
    respond_to do |format|
      if @sponsorship.update(sponsorship_params)
        format.html { redirect_to @track, notice: 'sponsorship was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsorship }
      else
        format.html { render :edit }
        format.json { render json: @sponsorship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sponsorship.destroy
    respond_to do |format|
      format.html { redirect_to sponsorships_url, notice: 'Sponsorship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sponsorship
      @sponsorship = Sponsorship.find(params[:id])
    end

    def sponsorship_params
      params.fetch(:sponsorship, {})
    end
end
