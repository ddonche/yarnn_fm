class UpdateIsbnAsString < ActiveRecord::Migration[5.0]
  def change
    change_column :listings, :isbn, :string
  end
end
