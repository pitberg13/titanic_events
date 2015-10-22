class AddPhotosToEvents < ActiveRecord::Migration
  def up
    add_column "events", "photos", :string
  end
  def down
    remove_column "events", "photos"
  end
end
