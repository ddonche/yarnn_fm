class Topic < ApplicationRecord
  include Taggable
  
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :delete_all
  has_many :flags, as: :flaggable, dependent: :delete_all

  validates :content, presence: true, length: { minimum: 2, maximum: 10000 }
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).topics
  end
  
end