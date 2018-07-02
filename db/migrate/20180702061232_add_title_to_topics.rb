class AddTitleToTopics < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :title, :string
  end
end
