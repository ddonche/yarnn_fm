class AddCommentableTypeToNotification < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :commentable_type, :string
  end
end
