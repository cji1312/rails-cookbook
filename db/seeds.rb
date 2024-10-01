# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "cleaning the database"
Recipe.destroy_all

puts "creating recipes..."
Recipe.create!(
  name: "cereal",
  description: "milk and cocopops",
  image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.gLoq_OhMscoC-1EElAYChAHaE7%26pid%3DApi&f=1&ipt=8c7d5fe0c53cea4f22c63bf2d9ac5165b6c90a654e34bc0e068713783167d28d&ipo=images",
  rating: 8
)

Recipe.create!(
  name: "cheese toastie",
  description: "best thing ever",
  image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.YL0PISEpbqlC6lvyvSkc6gHaEK%26pid%3DApi&f=1&ipt=379d5411d4f4874618f92626921879ffb68c32a28ab2e38a8c59b108a7799819&ipo=images",
  rating: 7
)

Recipe.create!(
  name: "salad",
  description: "fresh stuff",
  image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.tasteofhome.com%2Fwp-content%2Fuploads%2F2018%2F01%2Fexps6498_MRR133247D07_30_5b_WEB-11.jpg&f=1&nofb=1&ipt=b3627601c2f9051569db8ab1d99251b276efcde553335a694a93e28ea2a5c1bf&ipo=images",
  rating: 5
)

Recipe.create!(
  name: "chocolate pudding",
  description: "yummmy",
  image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fsugarspunrun.com%2Fwp-content%2Fuploads%2F2018%2F03%2FHomemade-Chocolate-Pudding-Recipe-1-of-1-6.jpg&f=1&nofb=1&ipt=fb408f7618c7aeb3e9f3c54c90df17034dc1eee3f8018b58541e95e31568e75c&ipo=images",
  rating: 10
)
puts "Done! #{Recipe.all.count} recipes created"
