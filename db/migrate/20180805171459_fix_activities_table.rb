class FixActivitiesTable < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :commentable_type, :string
    change_column :activities, :activity_type, :integer
  end
end
