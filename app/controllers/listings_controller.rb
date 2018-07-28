class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :delete, :download]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    @listings = Listing.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 25)
	end
	
	def genres
	  @genre = request.path.split('/').last
    if params[:tag]
      @listings = Listing.tagged_with(params[:tag]).order("created_at DESC").paginate(:page => params[:page], :per_page => 25)
    end
	end

	def show
	  @tracks = Track.all.where(listing_id: @listing.id)
    @reviews = @listing.reviews.order("created_at DESC")
    @user_review = Review.find_by(user_id: current_user.id, listing_id: @listing.id)
    @review = Review.new
    if @reviews.empty?
      @avg_rating = 0
    else
      @avg_rating = @reviews.average(:rating).round(2)
    end
    @purchased = Transaction.all.where(buyer: current_user, listing_id: @listing.id)
	end
	
	def new
    if current_user.uid.blank?
      redirect_to payout_method_path, alert: "Please connect to Stripe first. Setting it up is easy."
    else
      @user = current_user
      @listing = current_user.listings.build
      respond_to do |format| 
        format.html
        format.js
      end
    end
	end

  def edit
  end

  def create
    @listing = current_user.listings.build(listing_params)
    respond_to do |format|
      if @listing.save
        format.html { redirect_to @listing, notice: 'Your listing was successful.' }
        format.json { render :show, status: :created, location: @listing }
        format.js
      else
        format.html { render :new }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Your listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Your listing was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  def download
    @name = @listing.title.parameterize.underscore
    send_data(@listing.file.url, 
    :filename => "#{@name}.zip",
    :type => 'application/zip',
    :disposition => 'attachment',
    :url_based_filename => true)
  end

	private
	def find_listing
		if params[:id].nil?
			@listing = current_listing
		else
			@listing = Listing.find(params[:id])
		end
	end
	
  def listing_params
    params.require(:listing).permit(:title, :description, :user_id, :isbn, :filetype, :pseudonym_id,
                                  :year, :price, :publisher, :language, :tag_list, :file, :image)
  end
end