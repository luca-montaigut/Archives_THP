# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Movie.destroy_all

100.times do
Movie.create(
  name: Faker::Book.title, 
  year: Faker::Number.between(from: 1920, to: 2020), 
  genre: ["action", "horreur", "comédie", "drame"].sample, 
  synopsis: Faker::ChuckNorris.fact,
  director: Faker::Name.name, 
  allocinoche_rating: "%.2f" % Faker::Number.between(from: 1.0, to: 5.0),
  already_seen: false,
  my_rating: nil
)
end