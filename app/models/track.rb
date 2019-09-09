class Track < ApplicationRecord
  include Taggable
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  has_rich_text :body

  belongs_to :user, counter_cache: true
  belongs_to :album, optional: true, counter_cache: true
  belongs_to :pseudonym, optional: true
  has_many :favorites, counter_cache: true
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :destroy
  has_many :listings
  has_many :sponsorships, dependent: :destroy
  enum explicit: { standard: 0, explicit: 1 }

  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  validates :audio, file_size: { less_than: 40.megabytes }, presence: true
  validates :image, file_size: { less_than: 1.megabytes }, presence: true
  validates :tag_list, presence: true

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image

  def crop_image
    image.recreate_versions! if crop_x.present?
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).tracks
  end
end
