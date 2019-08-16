class Comment < ApplicationRecord
  acts_as_votable
  belongs_to :commentable, polymorphic: true, counter_cache: true
  belongs_to :user, counter_cache: true
  validates :content, presence: true
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :notifications, as: :notifiable, dependent: :delete_all
  has_many :notations, dependent: :destroy
end