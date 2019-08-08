class Tag < ActiveRecord::Base
  include Taggable
  
  before_save :downcase_fields

  has_many :taggings

  has_many :tracks, through: :taggings, source: :taggable, source_type: "Track"
  has_many :listings, through: :taggings, source: :taggable, source_type: "Listing"
  has_many :topics, through: :taggings, source: :taggable, source_type: "Topic"

  def downcase_fields
    self.name.downcase!
  end
end