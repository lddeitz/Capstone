class CreateCommentTags < ActiveRecord::Migration[6.0]
  def change
    create_table :comment_tags do |t|
      t.integer :comment_id
      t.integer :tag_id

     
    end
  end
end
