class FixHeroku < ActiveRecord::Migration[5.0]
  def change
    drop_table :merchants
    add_column :users, :uid, :string
    add_column :users, :stripe_id, :string
  end
end
