class AddTrackExplicitToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :explicit, :integer, default: 0
  end
end
