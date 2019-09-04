class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  has_many :notifications, as: :notifiable, dependent: :destroy
  validates :body, presence: true
end