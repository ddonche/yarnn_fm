class AddAdvertToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :ad_image, :string
    add_column :links, :ad_link, :string
  end
end
