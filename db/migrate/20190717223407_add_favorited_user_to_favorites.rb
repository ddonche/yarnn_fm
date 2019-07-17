class AddFavoritedUserToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :favorited_id, :integer
  end
end
