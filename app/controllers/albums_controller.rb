class AlbumsController < ApplicationController
	before_action :find_album, only: [:show, :dashboard]
	before_action :find_track, only: [:show, :dashboard]

	def index
		@albums = Album.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
	end

	def show
	end

	def dashboard
	end

	private

	def find_track
		@tracks = Track.where(album_id: @album).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
	end

	def find_album
		if params[:id].nil?
			@album = current_album
		else
			@album = Album.find(params[:id])
		end
	end
end