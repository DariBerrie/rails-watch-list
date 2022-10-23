class ChangeCommentToText < ActiveRecord::Migration[7.0]
  def change
    change_column :bookmarks, :comment, :text
  end
end
