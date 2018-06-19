class AddDefaultToTrackAvatar < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tracks, :avatar, "default_avatar.jpg"
  end
end
