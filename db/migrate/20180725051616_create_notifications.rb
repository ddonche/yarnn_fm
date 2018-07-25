class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer  "recipient_id"
      t.integer  "notified_by_id"
      t.integer  "review_id"
      t.integer  "comment_id"
      t.integer  "listing_id"
      t.integer  "commentable_id"
      t.integer  "topics_id"
      t.integer  "conversation_id"
      t.integer  "message_id"
      t.integer  "notification_type"
      t.boolean  "read",              default: false
      t.datetime "created_at",                        null: false
      t.datetime "updated_at",                        null: false
      t.integer  "track_id"
      t.string   "commentable_type"

      t.timestamps null: false
    end
    add_foreign_key :notifications, :users, column: :recipient_id
    add_foreign_key :notifications, :users, column: :notified_by_id
  end
end
