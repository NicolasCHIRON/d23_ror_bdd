# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
100.times do
  movie = Movie.create!(name: Faker::Movie.title, year: Faker::Date.between(from: 1900, to: 2020), genre: (["action", "horreur", "comédie", "drame"]).sample, synopsis: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 40), director: Faker::Name.name, allocine_rating: sprintf("%.1f", Faker::Number.between(from: 0.0, to: 5.0)), already_seen: false)
end