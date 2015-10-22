class PostImage < ActiveRecord::Base

  belongs_to :post
  has_attached_file :photo

  mount_uploader :image, ImageUploader

end
