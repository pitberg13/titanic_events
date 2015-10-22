class CreatePostImages < ActiveRecord::Migration
  def up
    create_table :post_images do |t|
      t.references :post
      t.references :image

      t.timestamps null: false
    end
    add_index :post_images, ["post_id", "image_id"]
  end

  def down
    drop_table :post_images
  end
end
