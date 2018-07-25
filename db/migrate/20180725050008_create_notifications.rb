class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :recipient, index: true
      t.references :notified_by, index: true
      t.references :track, index: true
      t.references :review, index: true
      t.references :comment, index: true
      t.references :listing, index: true
      t.references :blog, index: true
      t.references :topic, index: true
      t.references :conversation, index: true
      t.references :message, index: true
      t.integer :notification_type
      t.boolean :read, default: false

      t.timestamps null: false
    end
    add_foreign_key :notifications, :users, column: :recipient
    add_foreign_key :notifications, :users, column: :notified_by
  end
end

