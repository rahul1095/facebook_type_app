class AddCommentIdToLikes < ActiveRecord::Migration[5.2]
  def change
    add_column :likes, :comment_id, :intyeger
  end
end
