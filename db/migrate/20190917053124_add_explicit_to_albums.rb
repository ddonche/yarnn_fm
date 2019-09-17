class AddExplicitToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :explicit, :integer, default: 0
  end
end
