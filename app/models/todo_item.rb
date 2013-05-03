class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude, :destination_id

  validates :location, :presence => true

  geocoded_by :geolocate
  # makes sure we have a geocoded location to save to the database
  after_validation :geocode

  has_many :comments
  belongs_to :destination

  def geolocate
    "#{self.name}"
  end
  
end
