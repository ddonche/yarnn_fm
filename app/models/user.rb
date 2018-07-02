class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :username, use: :slugged
  enum user_type: { standard: 0, pro: 1 }

  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_image
  
  def crop_image
    image.recreate_versions! if crop_x.present?
  end
  validates :username, presence: true, length: { minimum: 4, maximum: 22 } 
  validates :name, presence: true
  validates :image, file_size: { less_than: 1.megabytes }
  
  has_many :albums
  has_many :tracks
  has_many :topics
  has_many :favorites
  has_many :favorite_tracks, through: :favorites, source: :track
  has_many :blogs
  has_many :comments
  has_many :active_relationships, class_name: "Relationship",
                                  foreign_key: "follower_id",
                                  dependent: :destroy
  has_many :passive_relationships, class_name: "Relationship",
                                  foreign_key: "followed_id",
                                  dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed 
  has_many :followers, through: :passive_relationships, source: :follower
  
  # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end
  
  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
  
  # Returns true is the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
  
  def favorited?(track)
    track.favorites.where(user_id: id).any?
  end
  
  # Returns a user's status feed.
  def feed
    following_ids = "SELECT followed_id FROM relationships
                    WHERE follower_id = :user_id"
    Track.where("user_id IN (#{following_ids})
              OR user_id = :user_id", user_id: id)
  end
  
  # Defines Tracks that were favorited
  def favorited_tracks
    favorite << track
  end
  
end