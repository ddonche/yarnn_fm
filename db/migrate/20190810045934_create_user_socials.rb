class CreateUserSocials < ActiveRecord::Migration[6.1]
  def change
    create_table :user_socials do |t|
      t.string :facebook
      t.string :twitter
      t.string :youtube
      t.string :instagram
      t.string :reddit
      t.string :amazon
      t.string :patreon
      t.string :github
      t.string :snapchat
      t.string :vimeo
      t.string :soundcloud
      t.string :itunes
      t.string :stitcher

      t.timestamps
    end
  end
end
