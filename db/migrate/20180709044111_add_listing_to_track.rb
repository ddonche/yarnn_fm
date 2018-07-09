class AddListingToTrack < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :listing_id, :integer
  end
end
