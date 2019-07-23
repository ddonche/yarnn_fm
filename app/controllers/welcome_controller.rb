class WelcomeController < ApplicationController
	def index
    @track_count = Track.count
    @album_count = Album.count
    @user_count = User.count
    @listing_count = Listing.count
	end
	
	def about
	end
	
	def help
	end
	
  def home
    if user_signed_in?
      @event = current_user.events.build
      @feed_items = current_user.feed.order("created_at DESC").paginate(:page => params[:page], :per_page => 24)
      respond_to do |format| 
        format.html
        format.js
      end
    end
  end
  
  def privacy
  end
end