class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  def sales
    @transactions = Transaction.all.where(seller: current_user).order("created_at DESC")
  end
  
  def purchases
     @transactions = Transaction.all.where(buyer: current_user).order("created_at DESC")
     @pseudo = Pseudonym.find_by(params[:pseudo_id])
  end

  def index
    @transactions = Transaction.all
  end

  def show
  end

  def new
    @transaction = Transaction.new
    @listing = Listing.find(params[:listing_id])
  end

  def edit
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.buyer_id = current_user.id
    @listing = Listing.find(params[:listing_id])
    @seller = @listing.user
    @transaction.listing_id = @listing.id
    @transaction.seller_id = @seller.id

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to @listing, notice: 'Transaction successful. You may now download this.' }
        format.json { render :show, status: :created, location: @listing }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
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
