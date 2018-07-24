class AddEditToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :editor, :string
  end
end
