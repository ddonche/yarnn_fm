class AddPseudonymsToTracks < ActiveRecord::Migration[5.0]
  def change
    add_reference :tracks, :pseudonym, index: true, foreign_key: true
    remove_column :tracks, :pseudo_id
  end
end
