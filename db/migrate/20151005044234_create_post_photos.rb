class CreatePostPhotos < ActiveRecord::Migration
  def up
    create_table :post_photos do |t|
      t.references :post
      t.references :photo

      t.timestamps null: false
    end
    add_index :post_photos, ["post_id", "photo_id"]
  end
  def down
    drop_table :post_photos
  end
end
