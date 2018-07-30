class Notification < ApplicationRecord
  enum notification_type: { comment: 0, review: 1, message: 2, follow: 3, unfollow: 4, favorite: 5, purchase: 6, unfavorite: 7 }
  enum read: { read: true, unread: false }
  belongs_to :notified_by, class_name: 'User'
end