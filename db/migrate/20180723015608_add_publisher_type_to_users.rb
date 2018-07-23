class AddPublisherTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :publisher_type, :integer, :default => 0
  end
end