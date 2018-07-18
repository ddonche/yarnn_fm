class UpdateUserStripeUid < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :uid, :stripe_uid
  end
end
