class AddItunesCategoriesToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :itunes_cat1, :string
    add_column :albums, :itunes_cat2, :string
    add_column :albums, :itunes_cat3, :string
  end
end
