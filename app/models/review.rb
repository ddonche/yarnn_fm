class Review < ApplicationRecord
  belongs_to :user
  belongs_to :listing, counter_cache: true
  validates :content, presence: true, length: { minimum: 300, maximum: 5000 }
  validates :rating, presence: true
  has_many :events, as: :eventable, dependent: :destroy
  has_many :notifications, as: :notifiable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :destroy
end
