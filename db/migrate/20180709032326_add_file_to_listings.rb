class AddFileToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :file, :string
    add_column :listings, :image, :string
  end
end
