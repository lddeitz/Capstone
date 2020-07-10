class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :song_id
      t.string :author
      t.text :notes
      t.time :song_timestamp
      t.integer :user_id

      t.timestamps
    end
  end
end
