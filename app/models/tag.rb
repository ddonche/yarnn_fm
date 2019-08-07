class Tag < ActiveRecord::Base
  has_many :taggings

  has_many :tracks, through: :taggings, source: :taggable, source_type: "Track"
  has_many :listings, through: :taggings, source: :taggable, source_type: "Listing"
  has_many :topics, through: :taggings, source: :taggable, source_type: "Topic"
end