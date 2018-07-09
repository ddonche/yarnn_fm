class AddUserToListings < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :user_id, :integer
    add_index :listings, :user_id
  end
end
