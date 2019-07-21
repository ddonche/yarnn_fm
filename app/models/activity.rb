class Activity < ApplicationRecord
  enum eventable_type: { comment: 0, review: 1, track: 2, follow: 3, unfollow: 4, 
                        favorite: 5, unfavorite: 6, purchase: 7, blog: 8,
                        listing: 9, album: 10, pseudonym: 11, topic: 12 }
  belongs_to :user
  belongs_to :eventable, polymorphic: true
end