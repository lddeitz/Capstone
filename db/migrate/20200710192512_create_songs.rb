class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :keywords
      t.string :url
      t.string :img_url

      t.timestamps
    end
  end
end
