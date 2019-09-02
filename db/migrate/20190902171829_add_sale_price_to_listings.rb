class AddSalePriceToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :sale_price, :decimal
  end
end
