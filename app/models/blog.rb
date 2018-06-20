class Blog < ApplicationRecord
  belongs_to :user
  enum published_status: { draft: 0, published: 1 }

  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :avatar, AvatarUploader
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
end
