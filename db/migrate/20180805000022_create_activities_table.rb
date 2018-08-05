class CreateActivitiesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer  "user_id"
      t.integer  "followed_id"
      t.integer  "item_id"
      t.integer  "parent_id"
      t.integer  "activity_type"

      t.belongs_to :user, foreign_key: true
      
      t.timestamps
    end
  end
end
