class FixActivitiesTable < ActiveRecord::Migration[5.0]
  def change
    remove_column :activities, :activity_type
    add_column :activities, :activity_type, :integer
  end
end
