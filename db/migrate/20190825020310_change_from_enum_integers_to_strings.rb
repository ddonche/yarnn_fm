class ChangeFromEnumIntegersToStrings < ActiveRecord::Migration[6.1]
  def change
    rename_column :events, :eventable_type, :eventable_type_old
    rename_column :flags, :flaggable_type, :flaggable_type_old
    rename_column :flags, :flag_type, :flag_type_old
    rename_column :notifications, :commentable_type, :commentable_type_old
    rename_column :notifications, :notifiable_type, :notifiable_type_old
    add_column :events, :eventable_type, :string
    add_column :flags, :flaggable_type, :string
    add_column :flags, :flag_type, :string
    add_column :notifications, :commentable_type, :string 
    add_column :notifications, :notifiable_type, :string 
  end
end
