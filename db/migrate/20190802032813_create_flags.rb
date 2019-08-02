class CreateFlags < ActiveRecord::Migration[6.1]
  def change
    create_table :flags do |t|
      t.integer :flaggable_type
      t.integer :flaggable_id
      t.integer :flagged_by_id

      t.timestamps
    end
  end
end
