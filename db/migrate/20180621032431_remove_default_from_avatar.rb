class RemoveDefaultFromAvatar < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:tracks, :avatar, nil)
  end
end
