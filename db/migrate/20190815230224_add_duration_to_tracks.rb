class AddDurationToTracks < ActiveRecord::Migration[6.1]
  def change
    add_column :tracks, :duration, :integer
  end
end
