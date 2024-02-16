class PlacesController < ApplicationController
 

def index
  @places = Place.all
end

def show
  @place = Place.find_by({"id"=> params["id"]})
end


def new
  @place = Place.new
end

def create

  puts "i'm here"

  @place = Place.new
  @place["name"] = params["place"]
  @place["date_visited"] = params ["date_visited"]
  @place["description"] = params["description"]
   @place.save

puts "place was saved"

  redirect_to "/places"

end

end