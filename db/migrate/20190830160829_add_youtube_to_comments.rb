class AddYoutubeToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :youtube, :string
  end
end
