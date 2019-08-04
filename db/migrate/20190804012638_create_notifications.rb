class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.integer :notified_by_id
      t.integer :recipient_id
      t.integer :notifiable_id
      t.integer :parent_id
      t.integer :commentable_type
      t.integer :notifiable_type
      t.integer :read_status

      t.timestamps
    end
  end
end
