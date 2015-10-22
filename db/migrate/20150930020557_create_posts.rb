class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "title"
      t.string "permalink"
      t.string "content"
      t.boolean "published"
      t.boolean "featured"
      t.integer "position"
      t.integer "image_id"
      t.string "image"

      t.timestamps null: false
    end
    add_index("posts", "title")
    add_index("posts", "permalink")
    add_index("posts", "image_id")
  end

  def down
    drop_table :posts
  end

end
