# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

users = []
10.times do
  users << User.create(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          street: Faker::Address.street_name,
          number: Faker::Address.building_number,
          city: Faker::Address.city,
          postcode: Faker::Address.postcode,
          country: Faker::Address.country
  )
end

15.times do
  post = Post.create!(
          title: Faker::JapaneseMedia::SwordArtOnline.location,
          body: Faker::Lorem.paragraph,
          published: Faker::Boolean.boolean(true_ratio: 0.5),
          user: users.sample
  )
  20.times do
    post.comments.create(body: Faker::Lorem.sentence, user: users.sample)
  end
end