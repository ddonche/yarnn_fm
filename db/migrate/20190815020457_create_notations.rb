class CreateNotations < ActiveRecord::Migration[6.1]
  def change
    create_table :notations do |t|
      t.integer :comment_id
      t.integer :user_id
      t.text :content
      
      t.timestamps
    end
  end
end