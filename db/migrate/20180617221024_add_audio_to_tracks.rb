class AddAudioToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :audio, :string
  end
end
