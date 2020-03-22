# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Rating.destroy_all
Comment.destroy_all
JoinOrderItem.destroy_all
JoinCartItem.destroy_all
Item.destroy_all
Category.destroy_all
Order.destroy_all
User.destroy_all

3.times do
    Category.create(name: Faker::Creature::Cat.breed)
end

i = 0
20.times do
    item = Item.new(title: Faker::Creature::Cat.name, 
    description: Faker::Lorem.paragraph, 
    price: rand(10...250),
    category_id: Category.all.sample.id)
    item.picture.attach(io: File.open("db/cat/cat#{i+=1}.jpg"), filename: 'cat.jpg', content_type: 'image/jpeg')
    item.save
end

10.times do 
User.create(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name, 
  description: Faker::Movie.quote,
  email: Faker::Name.first_name + "@yopmail.com",
  password: "123456",
  password_confirmation: "123456", 
  adress: Faker::Address.street_address + " " + Faker::Address.zip_code + " " + Faker::Address.city, 
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65), 
  is_admin: false)
end

User.create(
  first_name: "Lazy", 
  last_name: "Rabbit", 
  description: Faker::Movie.quote,
  email: "lazyrabbit@yopmail.com",
  password: "123456",
  password_confirmation: "123456", 
  adress: Faker::Address.street_address + " " + Faker::Address.zip_code + " " + Faker::Address.city, 
  birthdate: Faker::Date.birthday(min_age: 18, max_age: 65), 
  is_admin: true)

50.times do
    Comment.create(
        content: Faker::Hacker.say_something_smart,
        user_id: User.all.sample.id,
        item_id: Item.all.sample.id
    )
end

25.times do
    Order.create(
        stripe_customer_id: Faker::Code.imei,
        user_id: User.all.sample.id
    )
end

100.times do
    JoinOrderItem.create(
        order_id: Order.all.sample.id,
        item_id: Item.all.sample.id,
        buying_price: rand(10...250),
        quantity: rand(1..5),
    )
end

50.times do
    Rating.create(
        user_id: User.all.sample.id,
        item_id: Item.all.sample.id,
        rating: rand(3..5)
    )
end

10.times do
    Rating.create(
        user_id: User.all.sample.id,
        item_id: Item.all.sample.id,
        rating: rand(1..2)
    )
end