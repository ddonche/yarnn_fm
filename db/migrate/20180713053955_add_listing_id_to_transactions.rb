class AddListingIdToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :listing_id, :integer
  end
end
