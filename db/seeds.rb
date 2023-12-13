# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "554929586", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "443357924", category: "italian"}
paramo =  {name: "Paramo", address: "Roma Norte", phone_number: "44332222", category: "french"}
orinoco =  {name: "Orinoco", address: "Condesa",phone_number: "443234924", category: "japanese"}
umai =  {name: "Umai", address: "Geneva", phone_number: "44334524", category: "japanese"}

[dishoom, pizza_east, paramo, orinoco, umai].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
