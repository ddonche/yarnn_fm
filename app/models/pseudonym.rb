class Pseudonym < ApplicationRecord
 belongs_to :user
 has_many :listings
 has_many :tracks
end
