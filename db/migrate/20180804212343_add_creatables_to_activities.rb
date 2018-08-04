class AddCreatablesToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :creatable, :integer
    add_column :activities, :creatable_type, :integer
  end
end
