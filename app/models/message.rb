class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  has_many :notifications, as: :notifiable, dependent: :delete_all
  validates :body, presence: true
end