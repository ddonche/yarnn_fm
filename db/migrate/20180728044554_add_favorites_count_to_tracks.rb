class AddFavoritesCountToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :favorites_count, :integer
  end
end
