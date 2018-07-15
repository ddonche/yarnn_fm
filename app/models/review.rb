class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, presence: true, length: { minimum: 3, maximum: 5000 }
  validates :rating, presence: true
end
