class Photo < ActiveRecord::Base
  
  has_attached_file :photo
  has_many :post_photos
  has_many :posts, :through => :post_photos

  #validates_attachment_presence : photo
  #validates_attachment_size : photo, :less_than => 5.megabytes

end
