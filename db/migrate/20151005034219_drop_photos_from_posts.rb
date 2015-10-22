class DropPhotosFromPosts < ActiveRecord::Migration
  def up
    remove_column "posts", "photos"
  end

  def down
    add_column "posts", "photos", :string
  end
  
end
