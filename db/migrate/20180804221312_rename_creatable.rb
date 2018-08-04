class RenameCreatable < ActiveRecord::Migration[5.0]
  def change
    rename_column :activities, :creatable, :creatable_id
  end
end
