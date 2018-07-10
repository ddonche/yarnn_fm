class ListingsController < ApplicationController
	before_action :find_listing, only: [:show, :edit, :update, :delete]
	before_action :authenticate_user!, except: [:index, :show]

	def index
	  @pseudo = Pseudonym.find_by(params[:pseudo_id])
    if params[:tag]
      @listings = Listing.tagged_with(params[:tag])
    else
      @listings = Listing.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
    end
	end

	def show
	  if @listing.pseudo_id?
	    @pseudo = Pseudonym.find(@listing.pseudo_id)
	  end
	  @commentable = @listing
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
	end
	
	def new
    @listing = current_user.listings.build
    respond_to do |format| 
      format.html
      format.js
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

	private
	def find_listing
		if params[:id].nil?
			@listing = current_listing
		else
			@listing = Listing.find(params[:id])
		end
	end
	
  def listing_params
    params.require(:listing).permit(:title, :description, :user_id, :isbn, :filetype, :pseudo_id,
                                  :year, :price, :publisher, :language, :tag_list, :file, :image)
  end
end