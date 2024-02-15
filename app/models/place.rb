class Place < ApplicationRecord
  # talks to the "places" table

  Place.destroy_all
  place = Place.new

  place["name"] = "Spain"
place.save

end

