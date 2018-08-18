class AddSerialToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :serial, :integer, :null => false, :default => 0
  end
end
