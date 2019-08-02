class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :flags, as: :flaggable, dependent: :delete_all
  enum published_status: { draft: 0, published: 1 }

  validates :title, presence: true
  validates :content, presence: true

  mount_uploader :image, ImageUploader
  validates :image, file_size: { less_than: 1.megabytes }
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
end
