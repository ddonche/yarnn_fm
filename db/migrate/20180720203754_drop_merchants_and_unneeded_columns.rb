class DropMerchantsAndUnneededColumns < ActiveRecord::Migration[5.0]
  def change
    drop_table :merchants
    remove_column :users, :provider
    remove_column :users, :access_code
    remove_column :users, :publishable_key
    remove_column :users, :credit
  end
end
