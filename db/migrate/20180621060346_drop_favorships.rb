class DropFavorships < ActiveRecord::Migration[5.0]
  def change
    drop_table :favorships
  end
end
