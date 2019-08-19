class IpsumsController < ApplicationController
  access all: [:new, :create], 
                subscriber: :all, admin: :all
                
  include Apocalypse
  include Fantasy
  include Horror
  include Military
  include Modern
  include Nature
  include Scifi
  include Names
  include Western
  
  def show
  end

  def ipsum
  end

end