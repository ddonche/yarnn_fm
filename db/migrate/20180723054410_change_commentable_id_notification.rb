class ChangeCommentableIdNotification < ActiveRecord::Migration[5.0]
  def change
    remove_column :notifications, :track_id
    remove_column :notifications, :topic_id
    rename_column :notifications, :blog_id, :commentable_id
  end
end
