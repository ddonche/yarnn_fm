class Notation < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :events, as: :eventable, dependent: :destroy
  has_many :notifications, as: :notifiable, dependent: :destroy
  
  validates :content, presence: true
  
  acts_as_votable
end