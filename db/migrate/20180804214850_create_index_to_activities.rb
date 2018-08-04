class CreateIndexToActivities < ActiveRecord::Migration[5.0]
  def change
    add_index :activities, :user_id
  end
end
