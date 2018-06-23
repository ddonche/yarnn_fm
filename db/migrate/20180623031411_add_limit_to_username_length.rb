class AddLimitToUsernameLength < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :username, :string, :limit => 22
  end
end
