class Wiki < ApplicationRecord
  extend FriendlyId
  has_rich_text :body
  acts_as_votable
  
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :flags, as: :flaggable, dependent: :delete_all

  validates :title, presence: true
  validates :body, presence: true
  friendly_id :title, use: :slugged
end