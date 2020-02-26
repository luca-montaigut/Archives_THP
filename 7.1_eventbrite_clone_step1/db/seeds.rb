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
  encrypted_password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

User.create(
  email: "zobilamouche2leretour@yopmail.com",
  encrypted_password: "123456",
  description: Faker::Hacker.say_something_smart,
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name
)

Event.create(
  start_date: "2021-01-01",
  duration: 30,
  title: "Boom du siècle",
  description: "sex drogue rock'n roll, bref des putes et de la coke comme on aime",
  price: 50,
  location: "in da ghetto",
  admin_id: User.last.id
)

Attendance.create(
  stripe_customer_id: "123456",
  user_id: User.first.id,
  event_id: Event.first.id
)