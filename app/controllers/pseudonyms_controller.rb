class PseudonymsController < ApplicationController
	before_action :find_pseudonym, only: [:show, :edit, :update, :delete]
	before_action :authenticate_user!, except: [:index, :show]
	
	def new
	  @user = current_user
    @pseudonym = current_user.pseudonyms.build
    respond_to do |format| 
      format.html
      format.js
    end
	end

  def edit
  end

  def create
    @user = current_user
    @pseudonym = current_user.pseudonyms.build(pseudonym_params)
    respond_to do |format|
      if @pseudonym.save
        format.html { redirect_to @user, notice: 'Pseudonym was successfully created.' }
        format.json { render :show, status: :created, location: @user }
        format.js
      else
        format.html { render :new }
        format.json { render json: @pseudonym.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def update
    @user = current_user
    respond_to do |format|
      if @pseudonym.update(pseudonym_params)
        format.html { redirect_to @user, notice: 'Pseudonym was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @pseudonym.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pseudonym.destroy
    respond_to do |format|
      format.html { redirect_to @user, notice: 'Pseudonym was successfully deleted.' }
      format.json { head :no_content }
    end
  end

	private
	def find_pseudonym
		@pseudonym = Pseudonym.find(params[:id])
	end
	
  def pseudonym_params
    params.require(:pseudonym).permit(:name)
  end
end