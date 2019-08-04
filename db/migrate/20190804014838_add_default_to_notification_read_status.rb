class AddDefaultToNotificationReadStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :notifications, :read_status, :boolean, default: false
  end
end
