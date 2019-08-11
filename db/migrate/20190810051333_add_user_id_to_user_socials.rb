class AddUserIdToUserSocials < ActiveRecord::Migration[6.1]
  def change
    add_column :user_socials, :user_id, :integer
  end
end
