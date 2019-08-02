class AddFlagTypeToFlags < ActiveRecord::Migration[6.1]
  def change
    add_column :flags, :flag_type, :integer
  end
end
