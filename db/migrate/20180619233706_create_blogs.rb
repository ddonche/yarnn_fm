class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :published_status
      t.integer :user_id
      t.string :avatar

      t.timestamps
    end
  end
end
