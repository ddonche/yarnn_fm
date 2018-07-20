class ChangeUserStripeColumnType < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :stripe_id, :string
  end
end
