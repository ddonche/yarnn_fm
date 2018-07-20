class CreateMerchants < ActiveRecord::Migration[5.0]
  def change
    create_table :merchants do |t|
      t.string :uid
      t.string :provider
      t.string :access_code
      t.string :stripe_publishable_key
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end