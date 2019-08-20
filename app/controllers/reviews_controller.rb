class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_listing
  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def edit
    @review = current_user.reviews.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.listing_id = @listing.id

    respond_to do |format|
      if @review.save
        
        Event.create!(parent_id: @review.listing.id, eventable_id: @review.id, user_id: current_user.id,
                                  eventable_type: "review")
                                  
        Notification.create!(notifiable_id: @listing.id, 
                                recipient_id: @listing.user_id, notified_by_id: current_user.id, 
                                notifiable_type: "review")
                                
        format.html { redirect_to @listing, notice: 'Review was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @listing, notice: 'Review was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to @listing, notice: 'Review was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:listing_id])
    end
    
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :content)
    end
end
