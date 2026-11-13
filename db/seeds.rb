# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Destroy all existing animals before seeding
Animal.destroy_all

Animal.create!(
  name: "Tux",
  species: "Cat",
  sex: "M",
  breed: "Domestic Longhair",
  age_in_months: 7,
  vaccinated: true,
  sterilized: false,
  intake_date: "2026-11-03",
  adoption_status: "available",
  notes: "Does not like dry food."
)


Animal.create!(
  name: "Owlie",
  species: "Cat",
  sex: "F",
  breed: "Domestic Shorthair",
  age_in_months: nil,
  vaccinated: true,
  sterilized: true,
  intake_date: "2026-09-11",
  adoption_status: "adopted",
  notes: nil
)

Animal.create!(
  name: "Charlie",
  species: "Dog",
  sex: "M",
  breed: "Golden Retriever",
  age_in_months: 3,
  vaccinated: true,
  sterilized: false,
  intake_date: "2026-10-31",
  adoption_status: "available",
  notes: nil
)

Animal.create!(
  name: "Franky",
  species: "Bird",
  sex: "M",
  breed: "Blue-and-Yellow Macaw",
  age_in_months: 31,
  vaccinated: false,
  sterilized: false,
  intake_date: "2024-07-04",
  adoption_status: "pending",
  notes: "Likes ships as decoration.\nLikes the show One Piece."
)