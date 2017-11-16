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
  trait_holder = ""
  trait_hash = {}

  data.each do |attribute, values|
    attribute_holder = attribute
    values.each do |trait, pigeons|
      trait_holder = attribute
      trait_hash = {attribute => [trait.to_s]}

      pigeons.each do |pigeon|
        if pigeon == "Theo"
          puts "Pigeon is #{pigeon} and trait_hash[trait_holder] is #{trait_hash[trait_holder]}"
          puts "pigeon_list[pigeon] is #{(pigeon_list[pigeon])}"
          puts
        end
        if pigeon_list.has_key?(pigeon)
          if pigeon_list[pigeon].has_key?(trait_holder)
            (pigeon_list[pigeon][trait_holder]).push(trait_hash[trait_holder])
          else
            pigeon_list[pigeon][trait_holder] = []
            pigeon_list[pigeon][trait_holder] = trait_hash[trait_holder]

          end
        else
          pigeon_list[pigeon] = {}
          pigeon_list[pigeon][trait_holder] = []
          pigeon_list[pigeon][trait_holder] = trait_hash[trait_holder]
        end
      end
    end
  end
  pigeon_list
end
