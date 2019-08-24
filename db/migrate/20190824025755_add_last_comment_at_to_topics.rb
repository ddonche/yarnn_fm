class AddLastCommentAtToTopics < ActiveRecord::Migration[6.1]
  def change
    add_column :topics, :last_comment_at, :datetime
  end
end
