class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :publisher
      t.integer :year
      t.string :language
      t.integer :isbn

      t.timestamps
    end
  end
end
