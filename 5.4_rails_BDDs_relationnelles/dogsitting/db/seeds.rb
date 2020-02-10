# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

10.times do
City.create(name:Faker::Address.city)
end

45.times do
Dog.create(name:Faker::Creature::Dog.name, city_id: City.find(rand(City.first.id..City.last.id)).id)
end

20.times do
Dogsitter.create(first_name:Faker::Name.first_name, last_name:Faker::Name.last_name, city_id: City.find(rand(City.first.id..City.last.id)).id)
end

140.times do
Stroll.create(dogsitter_id: Dogsitter.find(rand(Dogsitter.first.id..Dogsitter.last.id)).id, dog_id: Dog.find(rand(Dog.first.id..Dog.last.id)).id)
end