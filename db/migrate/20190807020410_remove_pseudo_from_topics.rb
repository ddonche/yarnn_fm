class RemovePseudoFromTopics < ActiveRecord::Migration[6.1]
  def change
    remove_column :topics, :pseudo_id
  end
end
