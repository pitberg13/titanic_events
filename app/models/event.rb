class Event < ActiveRecord::Base

    mount_uploader :image, ImageUploader

    belongs_to :venue, foreign_key: "venue_id"

    has_many :event_categories
    has_many :categories, :through => :event_categories

    has_many :event_edits
    has_many :editors, :through => :event_edits, :class_name => "AdminUser"



    acts_as_list



    #PERMALINK_REGEX = [a-z0-9]+[_-]

    validates :title, :presence => true,
                       :length => { :maximum => 50 }
    validates :event_datetime, :presence => true
    validates :permalink, :presence => true,
                          :length => { :maximum => 50 },
                          :uniqueness => true

    scope :upcoming, lambda { where('events.event_datetime > ?', DateTime.now) }
    scope :live, lambda { where(:visible => true) }
    scope :sorted, lambda { order('events.event_datetime ASC') }
    scope :featured, lambda { where(:featured => true) }
    scope :classes, lambda { where(:category_id => 1) }
    scope :bigevents, lambda { where(:category_id => 12) }
    scope :streetworkout, lambda { where('title LIKE ?', "%workout%")}
    scope :parkour, lambda { where('title LIKE ?', "%parkour%")}
    scope :yoga, lambda { where('title LIKE ?', "%yoga%")}
    scope :soundhealing, lambda { where('title LIKE ?', "%sound healing%")}

    private

    def touch_venue
      venue.touch
    end

    def touch_category
      category.touch
    end

  end
