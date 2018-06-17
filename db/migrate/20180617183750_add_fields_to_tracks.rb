class AddFieldsToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :avatar, :string
    add_column :tracks, :title, :string
    add_column :tracks, :description, :text
    add_column :tracks, :album_id, :integer
    add_column :tracks, :vocals, :string
    add_column :tracks, :user_id, :integer
    add_index  :tracks, :user_id
  end
end
