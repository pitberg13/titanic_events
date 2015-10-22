class CreateImages < ActiveRecord::Migration
  def up
    create_table :images do |t|
      t.integer "post_id"
      t.integer "event_id"
      t.string "file"
      t.string "title"
      t.string "alt"

      t.timestamps null: false
    end
    add_index("images", "post_id")
    add_index("images", "event_id")
    add_index("images", "file")
  end

  def down
    drop_table :images
end
end
