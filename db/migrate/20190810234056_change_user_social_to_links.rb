class ChangeUserSocialToLinks < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_socials, :links
  end
end
