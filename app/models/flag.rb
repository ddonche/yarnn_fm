class Flag < ApplicationRecord
    enum flaggable_type: { track: 0, album: 1, listing: 2, topic: 3, blog: 4, review: 5 }
    enum flag_type:      { abuse: 0, spam: 1, explicit: 2, file: 3, virus: 4, standards: 5, 
                            copyright: 6, unconsumed: 7 }
    
    belongs_to :flagged_by, class_name: 'User'
    belongs_to :flaggable, polymorphic: true
end
