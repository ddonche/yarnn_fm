class DeleteDurationFromTracks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :duration
    add_column :tracks, :duration, :string, default: "00:00:00"
  end
end
