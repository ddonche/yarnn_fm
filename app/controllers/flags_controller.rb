class FlagsController < ApplicationController
  
  def index
    @page_title = "Content Flags"
    @flags = Flag.all.order('created_at DESC').page(params[:page]).per(24)
  end
  
  def new
    @flag = Flag.new
  end

  def create
    @flag = Flag.new(flag_params)
    @flag.flagged_by_id = current_user.id

    respond_to do |format|
      if @flag.save
        format.html { redirect_back(fallback_location: root_path, notice: 'Thank you for your help. We will look into it.') }
      else
        format.html { redirect_back(fallback_location: root_path, alert: "There was a problem Try again later.") }
      end
    end
  end

  def destroy
    @flag.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Flag was successfully deleted.' }
    end
  end
  
  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def flag_params
    params.require(:flag).permit(:flaggable_type, :flaggable_id, :flagged_by_id, :flag_type)
  end

end