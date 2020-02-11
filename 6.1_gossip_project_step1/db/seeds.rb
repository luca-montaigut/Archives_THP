# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
JoinTableTagGossip.destroy_all
PrivateMessage.destroy_all
Comment.destroy_all
Like.destroy_all

10.times do
City.create(
  name: Faker::Address.city,
  zip_code: Faker::Address.zip_code
)
end

10.times do
User.create(
  first_name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name, 
  description: Faker::Movie.quote,
  email: Faker::Name.last_name + "@mail.com",
  age:rand(13..100),
  city_id: City.find(rand(City.first.id..City.last.id)).id
)
end

20.times do
Gossip.create(
  title: Faker::ChuckNorris.unique.fact,
  content: Faker::Hipster.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
  user_id: User.find(rand(User.first.id..User.last.id)).id
)
end

10.times do
Tag.create(title: "#" + Faker::Verb.base)
end

30.times do
JoinTableTagGossip.create(
  tag_id: Tag.find(rand(Tag.first.id..Tag.last.id)).id,
  gossip_id: Gossip.find(rand(Gossip.first.id..Gossip.last.id)).id
)
end


20.times do
  PrivateMessage.create(sender: User.all.sample, content: Faker::Quote.unique.most_interesting_man_in_the_world)
  rand(1..6).times do
    JoinPmReceiver.create(private_message: PrivateMessage.all.last, recipient: User.all.sample)
  end
end