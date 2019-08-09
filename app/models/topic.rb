class Topic < ApplicationRecord
  include Taggable
  before_save :downcase_fields
  
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :destroy

  validates :content, presence: true, length: { minimum: 2, maximum: 10000 }
  
  def self.tagged_with(name)
    Tag.find_by_name!(name).topics
  end
  
  def tag_list=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
  
  def downcase_fields
    self.tag_list.downcase!
  end
  
end