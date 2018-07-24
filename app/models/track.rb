class Track < ApplicationRecord
  belongs_to :user
  belongs_to :album, optional: true
  has_many :favorites
  has_many :comments, as: :commentable
  has_many :listings
  enum explicit: { standard: 0, explicit: 1 }

  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  validates :audio, file_size: { less_than: 20.megabytes }, presence: true
  validates :image, file_size: { less_than: 1.megabytes }, presence: true
  validates :tag_list, presence: true

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
end
