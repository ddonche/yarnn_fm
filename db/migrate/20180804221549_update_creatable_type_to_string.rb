class UpdateCreatableTypeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :activities, :creatable_type, :string
  end
end
