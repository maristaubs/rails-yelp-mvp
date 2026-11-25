# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
if Rails.env.development?
  Restaurant.destroy_all
end

Restaurant.create!(name: "China in Box", address: "Rua Tito, 10", phone_number: "11 1111-1111", category: "chinese")
Restaurant.create!(name: "Spoleto", address: "Rua Cerro Corá, 20", phone_number: "22 2222-2222", category: "italian")
Restaurant.create!(name: "Temakeria & Cia", address: "Rua Cerro Corá, 44", phone_number: "33 3333-3333", category: "japanese")
Restaurant.create!(name: "Paris 6", address: "Rua Tonelero, 300", phone_number: "44 4444-4444", category: "french")
Restaurant.create!(name: "Cervejaria Ghent", address: "Marginal Tietê, 1000", phone_number: "55 5555-5555", category: "belgian")
