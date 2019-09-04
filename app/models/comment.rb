class Comment < ApplicationRecord
  acts_as_votable
  belongs_to :commentable, polymorphic: true, counter_cache: true
  belongs_to :user, counter_cache: true
  validates :content, presence: true
  has_many :events, as: :eventable, dependent: :destroy
  has_many :notifications, as: :notifiable, dependent: :destroy
  has_many :notations, dependent: :destroy
end