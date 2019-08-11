class SwitchWebsiteToLinks < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :website
    add_column :links, :website, :string
  end
end
