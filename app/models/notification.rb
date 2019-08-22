class Notification < ApplicationRecord
  enum notifiable_type: { comment: 0, review: 1, message: 2, follow: 3, unfollow: 4, favorite: 5, 
                            purchase: 6, unfavorite: 7, notation: 8 }
  enum read_status: { read: true, unread: false }
  enum commentable_type: { Blog: 0, Track: 1, Topic: 2 }
  belongs_to :notified_by, class_name: 'User'
  belongs_to :notifiable, polymorphic: true
end
