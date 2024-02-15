class PlacesController < ApplicationController
end 

def index
  @places = Place.all
end

def show
  @place = Place.find_by({"id"=> params["id"]})
end

def new
end

def create
  # start with a new Company
  @place = Place.new
  # assign user-entered form data to Company's columns
  @place["name"] = params["name"]
 
  # save Company row
  @place.save
  # redirect user
  redirect_to "/places"
end

private

def place_params
  params.require(:place).permit(:name) # Add other attributes here if needed
end