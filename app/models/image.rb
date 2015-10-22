class Image < ActiveRecord::Base


  has_many :post_images
  has_many :posts, :through => :post_images
  
  mount_uploader :image, ImageUploader

  has_many :event_images
  has_many :event, :through => :event_images

  private

  def touch_event
    event.touch
  end

  def touch_post
    post.touch
  end

end
