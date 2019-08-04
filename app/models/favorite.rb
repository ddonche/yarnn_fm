class Favorite < ApplicationRecord
  belongs_to :track
  belongs_to :user
  has_many :notifications, as: :notifiable
end
