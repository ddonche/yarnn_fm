class ChangeExplicitOnAlbums < ActiveRecord::Migration[6.1]
  def change
    remove_column :albums, :explicit
    add_column :albums, :explicit, :string, default: "clean"
  end
end
