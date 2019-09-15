class AddTwitchToLinks < ActiveRecord::Migration[6.1]
  def change
    add_column :links, :twitch, :string
  end
end
