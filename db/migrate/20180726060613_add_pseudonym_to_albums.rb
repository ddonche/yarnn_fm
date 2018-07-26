class AddPseudonymToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :pseudonym, index: true, foreign_key: true
    remove_column :albums, :pseudo_id
  end
end
