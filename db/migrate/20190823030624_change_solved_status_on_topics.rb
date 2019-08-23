class ChangeSolvedStatusOnTopics < ActiveRecord::Migration[6.1]
  def change
    remove_column :topics, :solved_status
    add_column :topics, :solved_status, :integer, default: 0
  end
end
