class Album < ActiveRecord::Base
  belongs_to :user
  has_many :tracks
  has_many :events, as: :eventable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :destroy
  belongs_to :pseudonym, optional: true
  enum serial: { nonserial: 0, serial: 1 }

  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :year, numericality: { only_integer: true }, :allow_blank => true

  mount_uploader :image, ImageUploader
  validates :image, file_size: { less_than: 1.megabytes }
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
end
