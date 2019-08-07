class DropTagsTables < ActiveRecord::Migration[6.1]
  def change
    drop_table :tags
    drop_table :taggings
  end
end
