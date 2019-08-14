class AddPlayCountToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :play_count, :integer
  end
end
