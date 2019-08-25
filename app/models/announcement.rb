class Announcement < ApplicationRecord
    belongs_to :user
    enum site: { individual: 0, global: 1 }
end
