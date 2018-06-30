class DropBuyUrlsFromTracks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tracks, :amazon_url
    remove_column :tracks, :bn_url
    remove_column :tracks, :kobo_url
    remove_column :tracks, :audible_url
    remove_column :tracks, :blurb_url
    remove_column :tracks, :smashwords_url
    remove_column :tracks, :apple_url
  end
end
