class AddCommentableTypeToActivities < ActiveRecord::Migration[5.0]
  def change
    add_column :activities, :commentable_type, :string
  end
end
