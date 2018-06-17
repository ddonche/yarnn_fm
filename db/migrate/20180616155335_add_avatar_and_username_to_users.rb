class AddAvatarAndUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :user_type, :integer, default: 0
  end
end
