class AddFavoritedIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :favorited_user_id, :integer
  end
end
