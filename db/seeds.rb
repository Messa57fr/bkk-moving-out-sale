# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Cleaning database..."

User.destroy_all
Comment.destroy_all
Post.destroy_all

puts "Creating users..."
n = 1
5.times do
  User.create!(
    email: "user#{n}@gmail.com",
    password: "password",
    nickname: Faker::Beer.brand
  )
  n += 1
end

puts "Creating articles..."
10.times do
  user = User.order(Arel.sql('RANDOM()')).first
  Post.create!(
    title: Faker::Games::SuperMario.location,
    content: Faker::Lorem.paragraph,
    url: Faker::Internet.url,
    user: user
  )
end

puts "Creating comments..."
5.times do
  user = User.order(Arel.sql('RANDOM()')).first
  post = Post.order(Arel.sql('RANDOM()')).first
  Comment.create!(
    content: Faker::Lorem.paragraph,
    user: user,
    post: post
  )
end


puts "DONE"
