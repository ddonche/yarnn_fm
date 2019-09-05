class TracksController < ApplicationController
	before_action :find_track, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    if params[:tag]
      @tracks = Track.tagged_with(params[:tag])
    else
      @tracks = Track.all.order("created_at DESC").page(params[:page]).per(24)
      @popular_tracks = Track.order('favorites_count DESC')
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
	  if @track.album_id?
	    @album = Album.find(@track.album_id)
	  end
    @comments = @commentable.comments.order("created_at DESC")
    @comment = Comment.new
    @purchased = Transaction.all.where(buyer: current_user, listing_id: @listing&.id)
    @transaction = Transaction.new
    @random_listing = Listing.offset(rand(Listing.count)).first
    @rand_reviews = @random_listing.reviews.order("created_at DESC")
    if @rand_reviews.empty?
      @rand_avg_rating = 0
    else
      @rand_avg_rating = @rand_reviews.average(:rating).round(2)
    end
    @random_track = Track.offset(rand(Track.count)).first
    @random_album = Album.joins(:tracks).group("albums.id").having("count(tracks.id)>0").order("RANDOM()").first
    @flag = Flag.new
    if user_signed_in?
      @user_flag = Flag.where(flagged_by_id: current_user.id, flaggable_id: @track.id)
    end
	end
	
	def new
    @track = current_user.tracks.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
    if current_user.role == "admin"
      @track = Track.find(params[:id])
    else
      @track = current_user.tracks.find(params[:id])
    end
  end

  def create
    @track = current_user.tracks.build(track_params)
    respond_to do |format|
      if @track.save
        Event.create!(eventable_id: @track.id, user_id: current_user.id,
                                  eventable_type: "track")
                                  
        format.html { redirect_to @track, notice: 'Track was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @track.update(track_params)
        format.html { redirect_to @track, notice: 'Track was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @track = current_user.tracks.find(params[:id])
    @track.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Track was successfully deleted.' }
    end
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
    params.require(:track).permit(:title, :body, :description, :user_id, :explicit, :duration,
                                  :image, :audio, :album_id, :vocals, :voice_site, :tag_list, 
                                  :buy_url, :listing_id, :pseudonym_id, :favorites_count)
  end
end