class ChangeReadStatusToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :notifications, :read_status, :boolean
  end
end
