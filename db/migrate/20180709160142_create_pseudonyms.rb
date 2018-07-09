class CreatePseudonyms < ActiveRecord::Migration[5.0]
  def change
    create_table :pseudonyms do |t|
      t.string :name
      
      t.timestamps
      t.references :user, index: true, foreign_key: true
    end
  end
end
