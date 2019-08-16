require 'elasticsearch/model'
require 'taglib'

class Track < ApplicationRecord
  include Taggable
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  before_save :set_duration

  belongs_to :user
  belongs_to :album, optional: true
  belongs_to :pseudonym, optional: true
  has_many :favorites
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :flags, as: :flaggable, dependent: :delete_all
  has_many :listings
  enum explicit: { standard: 0, explicit: 1 }

  mount_uploader :image, ImageUploader
  mount_uploader :audio, AudioUploader
  validates :audio, file_size: { less_than: 20.megabytes }, presence: true
  validates :image, file_size: { less_than: 1.megabytes }, presence: true
  validates :tag_list, presence: true

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def set_duration
    # :duration is an integer
    # t.integer  "duration",                  :default => 0
    TagLib::FileRef.open(:audio) do |file|
      update_column(:duration, file.audio_properties.length) unless file.null?
    end
  end 

  def crop_image
    image.recreate_versions! if crop_x.present?
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).tracks
  end
end
