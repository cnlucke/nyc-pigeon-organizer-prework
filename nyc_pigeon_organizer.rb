# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  attribute_holder = {}
  trait_holder = {}

  data.each do |attribute, values|
    attribute_holder = attribute
    values.each do |trait, pigeons|
      trait_holder = {attribute => trait}

      pigeons.each do |pigeon|
        if pigeon_list.has_key?(pigeon)
          puts "Pigeon is #{pigeon} and trait_holder is #{trait_holder}"
          pigeon_list[pigeon].merge!(trait_holder)
        else
          pigeon_list[pigeon] = {}
        end
      end
    end
  end
  pigeon_list
end
