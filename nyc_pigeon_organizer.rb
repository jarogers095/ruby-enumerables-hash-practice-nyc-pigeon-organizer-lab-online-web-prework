require 'pp'

def nyc_pigeon_organizer(data)
  bird_hash = {}
  
  data[:color].each_pair do |color, names|
    names.each do |name|
      bird_hash[name] = {color: [], gender: [], lives: []}
    end
  end
  
  #get colors
  data[:color].each_pair do |color, names|
    names.each do |name|
      bird_hash[name][:color].push(color.to_s)
    end
  end
  
  #get genders
  data[:gender].each_pair do |gender, names|
    names.each do |name|
      bird_hash[name][:gender].push(gender.to_s)
    end
  end
  
  #get location
  data[:lives].each_pair do |location, names|
    names.each do |name|
      bird_hash[name][:lives].push(location.to_s)
    end
  end
  
  pp bird_hash
  
end

#{
#   :color=> {
#     :purple=>["Theo", "Peter Jr.", "Lucky"],
#     :grey=>["Theo", "Peter Jr.", "Ms. K"],   
#     :white=>["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown=>["Queenie", "Alex"]
#   },
#   :gender=> {
#     :male=>["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female=>["Queenie", "Ms. K"]
#   },
#   :lives=> {
#     "Subway"=>["Theo", "Queenie"],
#     "Central Park"=>["Alex", "Ms. K", "Lucky"],
#     "Library"=>["Peter Jr."],
#     "City Hall"=>["Andrew"]
#   }
#}