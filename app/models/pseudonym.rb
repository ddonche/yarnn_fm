class Pseudonym < ApplicationRecord
 belongs_to :user
 has_many :listings
 has_many :tracks
 has_many :albums
 has_many :activities, as: :eventable, dependent: :delete_all
end
