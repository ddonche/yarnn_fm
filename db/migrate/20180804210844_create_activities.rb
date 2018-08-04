class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer  "user_id"
      t.integer  "followed_id"
      t.integer  "track_id"
      t.integer  "review_id"
      t.integer  "comment_id"
      t.integer  "listing_id"
      t.integer  "commentable_id"
      t.string   "commentable_type"
      t.integer  "topic_id"
      t.integer  "activity_type"
      t.datetime "created_at",                        null: false
      t.datetime "updated_at",                        null: false

      t.timestamps null: false
    end
    add_foreign_key :activities, :users, column: :user_id
  end
end
