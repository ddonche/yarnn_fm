class Album < ActiveRecord::Base
  belongs_to :user
  has_many :tracks
  has_many :activities, as: :eventable, dependent: :delete_all
  belongs_to :pseudonym, optional: true
  enum serial: { nonserial: 0, serial: 1 }
  
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :year, numericality: { only_integer: true }, :allow_blank => true

  mount_uploader :image, ImageUploader
  validates :image, file_size: { less_than: 1.megabytes }
  
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
