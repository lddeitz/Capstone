class ChangeCommentDataTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :comments, :song_timestamp, :string
  end
end
