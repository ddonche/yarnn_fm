class CreateFavorships < ActiveRecord::Migration[5.0]
  def change
    create_table :favorships do |t|
      t.integer :user_id
      t.integer :track_id

      t.timestamps
    end
    add_index :favorships, :user_id
    add_index :favorships, :track_id
    add_index :favorships, [:user_id, :track_id], unique: true
  end
end
