class RemoveDescriptionFromTracksAndListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :tracks, :description
    remove_column :listings, :description
  end
end
