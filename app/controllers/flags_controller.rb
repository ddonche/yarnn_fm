class FlagsController < ApplicationController
  access admin: :all
  
  def index
    @page_title = "Content Flags"
    @flags = Flag.all.order('created_at DESC').page(params[:page]).per(24)
  end

end