class AddIndexesToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :slug, :string
    add_index :blogs, :slug, unique: true
    add_index :blogs, :user_id
  end
end
