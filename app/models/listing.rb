class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :track
  has_many :transactions
  has_many :reviews
  enum filetype: { ebook: 0, audio: 1, video: 2 }

  mount_uploader :file, FileUploader
  mount_uploader :image, ListimageUploader
  
  validates :filetype, presence: true
  validates :image, file_size: { less_than: 1.megabytes }, presence: true
  validates :file, presence: true
  validates :tag_list, presence: true
  validates :year, numericality: { only_integer: true }, :allow_blank => true
  validates :isbn, format: { with: /\A[\d-]*\d[\d-]*\z/ }, :allow_blank => true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  
  acts_as_taggable
  ActsAsTaggableOn.force_lowercase = true
  ActsAsTaggableOn.force_parameterize = true
  
  def maximum_amount_of_tags
    number_of_tags = tag_list_cache_on("tags").uniq.length
    errors.add(:base, "Only 2 genres allowed") if number_of_tags > 2
  end
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
  
  def avg_rating
    reviews.blank? ? 0 : reviews.average(:rating).round(2)
  end 
end
