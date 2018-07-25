class AddPseudonymsToListings < ActiveRecord::Migration[5.0]
  def change
    add_reference :listings, :pseudonym, index: true, foreign_key: true
    remove_column :listings, :pseudo_id
  end
end
