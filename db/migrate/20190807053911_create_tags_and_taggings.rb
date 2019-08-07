class CreateTagsAndTaggings < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :taggable, polymorphic: true, index: true
      t.datetime :created_at
    end

  end
end