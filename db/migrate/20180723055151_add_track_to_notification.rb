class AddTrackToNotification < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :track_id, :integer
  end
end
