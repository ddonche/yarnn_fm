class Activity < ApplicationRecord
  enum activity_type: { comment: 0, review: 1, upload: 2, follow: 3, unfollow: 4, favorite: 5, unfavorite: 6, purchase: 7, create: 8 }
  belongs_to :user_id, class_name: 'User'
end