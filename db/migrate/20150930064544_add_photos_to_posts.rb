class AddPhotosToPosts < ActiveRecord::Migration
  def up
    add_column "posts", "photos", :string
  end
  def down
    remove_column "posts", "photos"
  end
end
