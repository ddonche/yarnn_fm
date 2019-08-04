class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :content, presence: true, length: { minimum: 300, maximum: 5000 }
  validates :rating, presence: true
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :notifications, as: :notifiable, dependent: :delete_all
  has_many :flags, as: :flaggable, dependent: :delete_all
end
