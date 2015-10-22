class CreateEventImages < ActiveRecord::Migration
  def up
    create_table :event_images do |t|
      t.references :image
      t.references :event

      t.timestamps null: false
    end
    add_index :event_images, ["image_id", "event_id"]
  end

  def down
    drop_table :event_images
  end
end
