class ChangeActivitiesType < ActiveRecord::Migration[5.0]
  def change
      change_column :activities, :activity_type, :string
  end
end
