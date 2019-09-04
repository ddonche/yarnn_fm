class Blog < ApplicationRecord
  has_rich_text :body
  acts_as_votable
  
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :events, as: :eventable, dependent: :destroy
  has_many :flags, as: :flaggable, dependent: :destroy
  enum published_status: { draft: 0, published: 1 }

  validates :title, presence: true, if: -> (blog) { !blog.draft? }
  validates :body, presence: true, if: -> (blog) { !blog.draft? }

  mount_uploader :image, BlogimageUploader
  validates :image, file_size: { less_than: 1.megabytes }, presence: true, if: -> (blog) { !blog.draft? }
         
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
end
