class RenameAvatarsToImages < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :avatar, :image
    rename_column :albums, :avatar, :image
    rename_column :tracks, :avatar, :image
    rename_column :blogs, :avatar, :image
  end
end
