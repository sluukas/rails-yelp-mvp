# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE",phone_number:"653289002", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",phone_number:"653289002", category: "french"}
pegasus =  {name: "Pegasus", address: "10A High hill street, London E1 6PQ",phone_number:"653289002", category: "french"}
tikupoiss =  {name: "Tikupoiss", address: "21 Mild street, London E1 6PQ",phone_number:"653289002", category: "japanese"}
babel =  {name: "Babel", address: "406 Windon street, London E1 6PQ", phone_number:"653289002", category: "italian"}

[dishoom, pizza_east, pegasus, tikupoiss, babel].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
