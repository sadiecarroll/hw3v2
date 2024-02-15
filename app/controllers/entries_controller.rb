class EntriesController < ApplicationController

    
    def show
    @entry = Entry.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @entry["entry_id"]})
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["title"] = params["first_name"]
    @entry["description"] = params["last_name"]
    @entry["posted_on"] = params["email"]
    @entry["place_id"] = params["place_id"]


    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["places_id"]}"
  end
end
