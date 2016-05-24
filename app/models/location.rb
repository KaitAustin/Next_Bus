class Location < ActiveRecord::Base
  geocoded_by: full_street_address
  after_validation :geocode #auto fetch the coordinates from geocoder

  def full_street_address
    "#{street_address}, #{city}, GA"

  end


end
