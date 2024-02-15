class Entry < ApplicationRecord
  # talks to the "posts" table
  Entry.destroy_all
  new_entry = Entry.new

  new_entry["title"] = "Tapas in Spain"
  new_entry["description"] = "Yum I love Tapas"
  new_entry["posted_on"] = "February 15, 2024"
  new_entry.save

end
