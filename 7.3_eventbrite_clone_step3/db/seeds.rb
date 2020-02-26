# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all



User.create(
  email: "zobilamouche@yopmail.com",
  password: "123456",
  description: Faker::Lorem.paragraph(sentence_count: 6),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

User.create(
  email: "zobilamouche2leretour@yopmail.com",
  password: "123456",
  description: Faker::Lorem.paragraph(sentence_count: 2),
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)


Event.create(
  start_date: "2020-06-03",
  duration: 50,
  title: "Réunion Tupperware",
  description: "C'est vraiment super de chez super les Tupperwares ! Venez vite voir ça =)",
  price: 500,
  location: "Paris, Chez Ginette dans le XVIème",
  admin_id: User.first.id
)

Event.create(
  start_date: "2021-02-01",
  duration: 50,
  title: "Concours de pétanque du terter",
  description: "Oh Marcel tu tires ou tu pointes ? On n'a pas toute la journée... Merci Michel, pas plus haut que le bord",
  price: 120,
  location: "Cassis, Place du village",
  admin_id: User.last.id
)

Event.create(
  start_date: "2021-01-01",
  duration: 86400,
  title: "Boom du siècle",
  description: "Sex Drug & rock'n roll, bref des putes et de la coke comme on aime",
  price: 666,
  location: "Toulouse, In da ghetto",
  admin_id: User.last.id
)

Attendance.create(
  stripe_customer_id: "123456",
  user_id: User.first.id,
  event_id: Event.first.id
)