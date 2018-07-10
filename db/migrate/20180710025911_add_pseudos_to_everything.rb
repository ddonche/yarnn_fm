class AddPseudosToEverything < ActiveRecord::Migration[5.0]
  def change
    add_column :listings, :pseudo_id, :integer
    add_column :tracks, :pseudo_id, :integer
    add_column :albums, :pseudo_id, :integer
    add_column :blogs, :pseudo_id, :integer
    add_column :topics, :pseudo_id, :integer
  end
end
