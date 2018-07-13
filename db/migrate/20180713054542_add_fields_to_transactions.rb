class AddFieldsToTransactions < ActiveRecord::Migration[5.0]
  def change
    add_column :transactions, :buyer_id, :integer
    add_column :transactions, :seller_id, :integer
  end
end
