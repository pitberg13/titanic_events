class AddImagesToImages < ActiveRecord::Migration
  def up
    remove_column "images", "file"
    add_column "images", "images", :string
  end

  def down
    remove_column "images", "images"
    add_column "images", "file", :string
  end
end
