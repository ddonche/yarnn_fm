class ChangeColumnsInActivities < ActiveRecord::Migration[5.0]
  def change
    rename_column :activities, :item_id, :eventable_id
    rename_column :activities, :activity_type, :eventable_type
  end
end
