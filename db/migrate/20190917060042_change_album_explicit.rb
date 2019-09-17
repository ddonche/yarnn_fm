class ChangeAlbumExplicit < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :explicit
    add_column :albums, :explicit, :string
  end
end
