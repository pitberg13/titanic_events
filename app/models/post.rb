class Post < ActiveRecord::Base

    has_many :post_edits
    has_many :editors, :through => :event_edits, :class_name => "AdminUser"

    has_many :post_photos
    has_many :photos, :through => :post_photos
    accepts_nested_attributes_for :photos, :allow_destroy => true
    #accepts_nested_attributes_for :photos

    mount_uploader :image, ImageUploader

    acts_as_list

    scope :published, lambda { where(:published => true) }
    scope :featured, lambda { where(:featured => true) }
    scope :sorted, lambda { order("created_at DESC")}

    #PERMALINK_REGEX = [a-z0-9]

    validates :title, :presence => true,
                       :length => { :maximum => 50 }
    validates :permalink, :presence => true,
                          :length => { :maximum => 50 },
                          :uniqueness => true

  end
