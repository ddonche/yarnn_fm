class Topic < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :activities, as: :eventable, dependent: :destroy

  validates :content, presence: true, length: { minimum: 2, maximum: 10000 }

  acts_as_taggable
  ActsAsTaggableOn.force_lowercase = true
  ActsAsTaggableOn.force_parameterize = true

  def maximum_amount_of_tags
    number_of_tags = tag_list_cache_on("tags").uniq.length
    errors.add(:base, "Only 1 category allowed") if number_of_tags > 2
  end
  
  private
end