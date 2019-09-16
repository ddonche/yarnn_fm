class AddDurationDefaultToTracks < ActiveRecord::Migration[6.1]
  def change
    change_column_default :tracks, :duration, "00:00:00"
  end
end
