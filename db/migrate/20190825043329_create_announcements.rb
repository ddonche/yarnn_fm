class CreateAnnouncements < ActiveRecord::Migration[6.1]
  def change
    create_table :announcements do |t|
      t.text :body
      t.integer :user_id
      t.integer :site, default: 0

      t.timestamps
    end
  end
end
