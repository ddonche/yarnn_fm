module Taggable
  extend ActiveSupport::Concern

  included do
    has_many :taggings, :as => :taggable, dependent: :destroy
    has_many :tags, :through => :taggings
  end  
  
  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
end