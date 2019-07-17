class RemoveFavoritedIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :favorited_id, :integer
  end
end
