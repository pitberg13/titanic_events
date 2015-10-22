class AddPhotoIdToPosts < ActiveRecord::Migration
  def up
    add_column "posts", "photo_id", :integer
  end
  def down
    remove_column "posts", "photo_id"
  end
end
