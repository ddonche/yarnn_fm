class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  validates :content, presence: true
  has_many :activities, as: :eventable, dependent: :delete_all
end