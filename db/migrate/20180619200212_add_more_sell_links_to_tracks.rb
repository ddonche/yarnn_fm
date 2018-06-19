class AddMoreSellLinksToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :buy_url, :string
    add_column :tracks, :bn_url, :string
    add_column :tracks, :apple_url, :string
  end
end
