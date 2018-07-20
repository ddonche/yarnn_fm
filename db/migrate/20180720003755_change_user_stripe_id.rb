class ChangeUserStripeId < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :stripe_customer_id, :stripe_id
  end
end
