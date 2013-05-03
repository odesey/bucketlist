class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :name, :location, :latitude, :longitude

  validates :location, :presence => true

  geocoded_by :my_geocoded
  # makes sure we have a geocoded location to save to the database
  after_validation :geocode

  has_many :comments
  belongs_to :destination

  def my_geocoded
  	"#{location} #{destination.name}"
  end
  
end
