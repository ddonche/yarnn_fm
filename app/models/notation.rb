class Notation < ApplicationRecord
  belongs_to :comment
  belongs_to :user
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :notifications, as: :notifiable, dependent: :delete_all
  
  validates :content, presence: true
  
  acts_as_votable
end