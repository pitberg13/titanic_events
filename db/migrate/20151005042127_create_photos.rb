class CreatePhotos < ActiveRecord::Migration
    def up
      create_table :photos do |t|
        t.attachment "photo"
        t.integer "post_id"

        t.timestamps null: false
      end
    end

    def down
      drop_table :photos
    end
  end
