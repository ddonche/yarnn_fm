class AddFieldsToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :avatar, :string
    add_column :albums, :title, :string
    add_column :albums, :description, :text
    add_column :albums, :year, :integer
    add_column :albums, :vocals, :string
  end
end