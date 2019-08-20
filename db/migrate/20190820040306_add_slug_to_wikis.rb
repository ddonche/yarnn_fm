class AddSlugToWikis < ActiveRecord::Migration[6.1]
  def change
    add_column :wikis, :slug, :string
    add_index :wikis, :slug, unique: true
  end
end
