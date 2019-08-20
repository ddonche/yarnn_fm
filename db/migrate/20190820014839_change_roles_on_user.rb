class ChangeRolesOnUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :roles
    add_column :users, :role, :integer, default: 0
  end
end
