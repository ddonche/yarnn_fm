class Listing < ApplicationRecord
  include Taggable
  
  belongs_to :user
  belongs_to :track
  belongs_to :pseudonym, optional: true
  has_many :transactions, dependent: :delete_all
  has_many :reviews, dependent: :destroy
  has_many :events, as: :eventable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :delete_all
  enum filetype: { ebook: 0, audio: 1, video: 2 }

  mount_uploader :file, FileUploader
  mount_uploader :image, ListimageUploader
  
  validates :filetype, presence: true
  validates :image, file_size: { less_than: 1.megabytes }, presence: true
  validates :file, presence: true
  validates_length_of :description, :minimum => 280, :too_short => "Description needs to be at least 280 characters"
  validates :tag_list, presence: true
  validates :year, numericality: { only_integer: true }, :allow_blank => true
  validates :isbn, format: { with: /\A[\d-]*\d[\d-]*\z/ }, :allow_blank => true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).listings
  end
  
  def avg_rating
    reviews.blank? ? 0 : reviews.average(:rating).round(2)
  end 
end
