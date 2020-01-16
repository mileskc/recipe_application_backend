# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


6.times do
    Recipe.create(
        name: Faker::Food.dish,
        author: Faker::TvShows::SiliconValley.character,
        img: Faker::LoremFlickr.image(size: "300x300", search_terms: ['food']),
        description: Faker::Food.description,
        prep_time: Faker::Number.between(from: 15, to: 30),
        serving_size: Faker::Number.between(from: 1, to: 4),
        calories_count: Faker::Number.between(from: 100, to: 400),
        star_rating: Faker::Number.between(from: 1, to: 5),
        directions: Faker::TvShows::GameOfThrones.character,
        ingredients: Faker::Food.ingredient,
    )
end

puts "Seeded Database"