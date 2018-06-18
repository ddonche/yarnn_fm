class Track < ApplicationRecord
  belongs_to :user
  belongs_to :album, optional: true

  mount_uploader :avatar, AvatarUploader
  mount_uploader :audio, AudioUploader
  
  acts_as_taggable
  ActsAsTaggableOn.force_lowercase = true
  ActsAsTaggableOn.force_parameterize = true
  
  def maximum_amount_of_tags
    number_of_tags = tag_list_cache_on("tags").uniq.length
    errors.add(:base, "Only 2 genres allowed") if number_of_tags > 2
  end
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  def crop_avatar
    avatar.recreate_versions! if crop_x.present?
  end
end
