class AddSolvedStatusToTopics < ActiveRecord::Migration[6.1]
  def change
    add_column :topics, :solved_status, :integer
  end
end
