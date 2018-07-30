class TracksController < ApplicationController
	before_action :find_track, only: [:show, :edit, :update, :delete, :favorite]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    if params[:tag]
      @tracks = Track.tagged_with(params[:tag])
    else
      @tracks = Track.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 25)
    end
	end

	def show
	  @commentable = @track
	  if @track.listing_id?
	    @listing = Listing.find(@track.listing_id)
      if @listing.reviews.empty?
        @avg_rating = 0
      else
        @avg_rating = @listing.reviews.average(:rating).round(2)
      end
	  end
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
	end
	
	def new
    @track = current_user.tracks.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
  end

  def create
    @track = current_user.tracks.build(track_params)
    respond_to do |format|
      if @track.save
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.json { render :show, status: :created, location: @track }
        format.js
      else
        format.html { render :new }
        format.json { render json: @track.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
        format.json { render :show, status: :ok, location: @track }
      else
        format.html { render :edit }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Track was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  def favorite
    @track.upvote_by current_user
    redirect_to :back
  end

	private
	def find_track
		if params[:id].nil?
			@track = current_track
		else
			@track = Track.find(params[:id])
		end
	end
	
  def track_params
    params.require(:track).permit(:title, :description, :user_id, :explicit,
                                  :image, :audio, :album_id, :vocals, :tag_list, 
                                  :buy_url, :listing_id, :pseudonym_id, :favorites_count)
  end
end