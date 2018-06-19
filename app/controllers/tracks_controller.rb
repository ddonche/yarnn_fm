class TracksController < ApplicationController
	before_action :find_track, only: [:show, :edit, :update, :delete]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    if params[:tag]
      @tracks = Track.tagged_with(params[:tag])
    else
      @tracks = Track.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
    end
	end

	def show
	end

	def dashboard
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

	private

	def find_track
		if params[:id].nil?
			@track = current_track
		else
			@track = Track.find(params[:id])
		end
	end
	
  def track_params
    params.require(:track).permit(:title, :description, :user_id, 
                                  :avatar, :audio, :album_id, :vocals, :tag_list)
  end
end