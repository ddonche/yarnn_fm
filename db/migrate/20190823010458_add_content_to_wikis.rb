class AddContentToWikis < ActiveRecord::Migration[6.1]
  def change
    add_column :wikis, :content, :text
  end
end
