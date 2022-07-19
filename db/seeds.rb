# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'
# require 'open-uri'

# puts "Cleaning database..."

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

# puts "Creating article 1..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219591/ifrzel.jpg')
# article1 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article1.photo.attach(io: file, filename: 'aricle1.jpg', content_type: 'image/jpg')
# article1.save

# puts "Creating article 2..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219591/melodie-descoubes-C9eFNxYem4k-unsplash_njii2b.jpg')
# article2 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article2.photo.attach(io: file, filename: 'article2.jpg', content_type: 'image/jpg')
# article2.save

# puts "Creating article 3..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219590/joshua-rawson-harris-LX0pplSjE2g-unsplash_kllvl5.jpg')
# article3 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article3.photo.attach(io: file, filename: 'article3.jpg', content_type: 'image/jpg')
# article3.save

# puts "Creating article 4..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219588/stijn-swinnen-qwe8TLRnG8k-unsplash_j53b8o.jpg')
# article4 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article4.photo.attach(io: file, filename: 'article4.jpg', content_type: 'image/jpg')
# article4.save

#   puts "Creating article 5..."
#   user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219585/marco-oriolesi-wqLGlhjr6Og-unsplash_q4txag.jpg')
# article5 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article5.photo.attach(io: file, filename: 'article5.jpg', content_type: 'image/jpg')
# article5.save

# puts "Creating article 6..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219585/neda-astani-KWTkd7mHqKE-unsplash_hu5cbf.jpg')
# article6 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article6.photo.attach(io: file, filename: 'article6.jpg', content_type: 'image/jpg')
# article6.save

# puts "Creating article 7..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219584/moises-alex-WqI-PbYugn4-unsplash_hugxk1.jpg')
# article7 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article7.photo.attach(io: file, filename: 'article7.jpg', content_type: 'image/jpg')
# article7.save

# puts "Creating article 8..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1655999258/Img1_MAGREZ_CORPO_GRAND_CRU_PapeClement-min_otemkg.jpg')
# article8 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article8.photo.attach(io: file, filename: 'article8.jpg', content_type: 'image/jpg')
# article8.save

# puts "Creating article 9..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219581/hello-i-m-nik-73_kRzs9sqo-unsplash_glmw3u.jpg')
# article9 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 15),
#   url: Faker::Internet.url,
#   user: user)
# article9.photo.attach(io: file, filename: 'article9.jpg', content_type: 'image/jpg')
# article9.save

# puts "Creating article 10..."
# user = User.order(Arel.sql('RANDOM()')).first
# file = URI.open('https://res.cloudinary.com/messa57fr/image/upload/v1657219580/peter-lawrence-rXZa4ufjoGw-unsplash_fdgdju.jpg')
# article10 = Post.new(
#   title: Faker::Games::SuperMario.location,
#   content: Faker::Lorem.paragraphs(number: 30),
#   url: Faker::Internet.url,
#   user: user)
# article10.photo.attach(io: file, filename: 'article10.jpg', content_type: 'image/jpg')
# article10.save

# puts "Creating comments..."
# 15.times do
#   user = User.order(Arel.sql('RANDOM()')).first
#   post = Post.order(Arel.sql('RANDOM()')).first
#   Comment.create!(
#     content: Faker::Lorem.paragraph,
#     user: user,
#     post: post
#   )
# end


# puts "DONE"
