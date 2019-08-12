class RemoveCkeditorAssets < ActiveRecord::Migration[6.1]
  def change
    drop_table :ckeditor_assets
  end
end
