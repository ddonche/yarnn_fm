class Event < ApplicationRecord
  enum eventable_type_old: { comment: 0, review: 1, track: 2, follow: 3, unfollow: 4, 
                        favorite: 5, unfavorite: 6, purchase: 7, blog: 8,
                        listing: 9, album: 10, pseudonym: 11, topic: 12, notation: 13,
                        wiki: 14, like: 15, dislike: 16, sponsorship: 17}
  belongs_to :user
  belongs_to :eventable, polymorphic: true
end