class Sponsorship < ApplicationRecord
  CONTRIB_AMOUNTS = [1, 5, 10, 25, 50, 100]
  attr_accessor :amount
  
  belongs_to :track
  belongs_to :buyer, class_name: "User"
  belongs_to :seller, class_name: "User"
  has_many :events, as: :eventable, dependent: :destroy
end