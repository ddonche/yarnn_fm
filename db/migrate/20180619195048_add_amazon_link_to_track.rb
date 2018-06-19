class AddAmazonLinkToTrack < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :buy_url, :string
    add_column :tracks, :amazon_url, :string
    add_column :tracks, :bn_url, :string
    add_column :tracks, :kobo_url, :string
    add_column :tracks, :audible_url, :string
    add_column :tracks, :blurb_url, :string
    add_column :tracks, :smashwords_url, :string
    add_column :tracks, :apple_url, :string
  end
end
