class Venue < ActiveRecord::Base

  has_many :events

  scope :sorted, lambda { order("venue_name ASC") }
  scope :eventvenue, lambda { where(:id => @event.venue_id)}


end
