class ChangeReadStatusToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :notifications, :read_status, :boolean
    change_column :notifications, :read_status, 'boolean USING CAST(read_status AS boolean)'
  end
end
