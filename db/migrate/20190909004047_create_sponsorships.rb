class CreateSponsorships < ActiveRecord::Migration[6.1]
  def change
    create_table :sponsorships do |t|
      t.integer :track_id
      t.integer :buyer_id
      t.integer :seller_id
      t.decimal :amount

      t.timestamps
    end
  end
end
