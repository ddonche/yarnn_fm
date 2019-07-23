class ChangeActivitiesToEvents < ActiveRecord::Migration[5.0]
  def change
    rename_table :activities, :events
  end
end
