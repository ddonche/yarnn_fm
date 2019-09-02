class CreateLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
