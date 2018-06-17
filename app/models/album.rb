class Album < ActiveRecord::Base
  belongs_to :user
  has_many :tracks

  mount_uploader :avatar, AvatarUploader
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
end
