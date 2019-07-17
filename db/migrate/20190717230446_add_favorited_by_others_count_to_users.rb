class AddFavoritedByOthersCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :favorited_by_others_count, :integer
  end
end
