class ChangeStripeUidUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :stripe_uid, :uid
  end
end
