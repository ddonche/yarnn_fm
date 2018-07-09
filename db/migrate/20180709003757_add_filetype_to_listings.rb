class AddFiletypeToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :filetype, :integer
  end
end
