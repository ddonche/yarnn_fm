class AddTitleToAccouncements < ActiveRecord::Migration[6.1]
  def change
    remove_column :announcements, :site
    add_column :announcements, :title, :string
  end
end
