class Actor < ActiveRecord::Base
	has_and_belongs_to_many :users
  geocoded_by :ip_address,
  :latitude => :lat, :longitude => :lon
  after_validation :geocode

end
