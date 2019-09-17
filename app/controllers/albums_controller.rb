class AlbumsController < ApplicationController
	before_action :find_album, only: [:show, :edit, :update, :dashboard]
	before_action :find_track, only: [:dashboard]
	before_action :authenticate_user!, except: [:index, :show]

	def index
    if params[:tag]
      @albums = Album.tagged_with(params[:tag])
    else
      @albums = Album.joins(:tracks).group("albums.id").having("count(tracks.id)>0").order("created_at DESC").page(params[:page]).per(24)
      @serials = Album.where({ serial: "serial" }).joins(:tracks).group("albums.id").having("count(tracks.id)>0").order("created_at DESC").page(params[:page]).per(24)
    end
	end

	def show
	  @tracks = Track.where(album_id: @album).order("created_at DESC").page(params[:page]).per(10)
	  respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
	end
	
	def new
    @album = current_user.albums.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
    @album = current_user.albums.find(params[:id])
  end

  def create
    @album = current_user.albums.build(album_params)
    respond_to do |format|
      if @album.save
        
        Event.create!(eventable_id: @album.id, user_id: current_user.id,
                                  eventable_type: "album")
        
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.js
      else
        format.html { render :new }
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @album = current_user.albums.find(params[:id])
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully deleted.' }
    end
  end

	private
	
  	def find_track
  		@tracks = Track.where(album_id: @album).order("created_at DESC").page(params[:page]).per(10)
  	end
  
  	def find_album
  		if params[:id].nil?
  			@album = current_album
  		else
  			@album = Album.find(params[:id])
  		end
  	end
  	
    def album_params
      params.require(:album).permit(:title, :description, :user_id, :pseudonym_id, :editor,
                                    :image, :year, :vocals, :tag_list, :serial, :itunes_cat1, 
                                    :itunes_cat2, :itunes_cat3, :explicit)
    end
end