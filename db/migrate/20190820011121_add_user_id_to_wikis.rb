class AddUserIdToWikis < ActiveRecord::Migration[6.1]
  def change
    add_column :wikis, :user_id, :integer
  end
end
