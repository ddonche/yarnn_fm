class AddCounterCacheToModels < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :tracks_count, :integer
    add_column :blogs, :comments_count, :integer
    add_column :topics, :comments_count, :integer
    add_column :listings, :reviews_count, :integer 
    add_column :tracks, :comments_count, :integer 
    add_column :users, :tracks_count, :integer
    add_column :users, :comments_count, :integer
    add_column :users, :topics_count, :integer
  end
end
