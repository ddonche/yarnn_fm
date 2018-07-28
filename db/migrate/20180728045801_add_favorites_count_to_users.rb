class AddFavoritesCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :favorited_count, :integer, :default => 0
    change_column_default :tracks, :favorites_count, 0
  end
end
