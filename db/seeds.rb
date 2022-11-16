# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Booking.destroy_all
puts "Destroying all users..."
User.destroy_all
puts "Destroying all homestays..."
Homestay.destroy_all
puts "Destroying all bookings..."

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: "1234567890",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(20..50),
    gender: ["male", "female"].sample,
    description: Faker::Lorem.sentence)
end

puts "... created #{User.count} users."
homes = ["https://www.rocketmortgage.com/resources-cmsassets/RocketMortgage.com/Article_Images/Large_Images/TypesOfHomes/types-of-homes-hero.jpg",
"https://www.mydomaine.com/thmb/dke2LC6lH21Pvqwd2lI6AIutnDY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/SuCasaDesign-Modern-9335be77ca0446c7883c5cf8d974e47c.jpg",
"https://boldliving.com.au/app/uploads/2022/07/Home-Designs.jpg",
"https://hensleyhomes.com/wp-content/uploads/2021/11/Goetsch-Custom-Home-Gallery-Photo-17.jpeg",
"https://cdn.vox-cdn.com/thumbor/GmlWD80P2S73aw8vvtJgPeKMeuk=/0x0:660x440/1200x800/filters:focal(278x168:382x272)/cdn.vox-cdn.com/uploads/chorus_image/image/61206839/salon-moderne-parisien_5399603.0.1449866718.0.jpg",
"https://images.adsttc.com/media/images/5cd9/89f6/284d/d171/9e00/0028/newsletter/FEATURE-_A6A_RAZE_006.jpg?1557760491",
"https://d6644ef6a12fcfb82f3f-5d6761b1e7eae8e264ad220502fbb6f0.ssl.cf5.rackcdn.com/a1c0b876-61e6-4ec3-8c05-ca96ca60e2d1/images/pickaflatphoto2.jpg"]
15.times do
  Homestay.create!(
  number_of_users: rand(1..4),
  comments: "Best home", price: rand(20..50),
  availability: true,
  family_description: Faker::Lorem.sentence,
  accomodation: ["apartment", "house"].sample,
  address: Faker::Address.street_address,
  country: Faker::Address.country,
  city: Faker::Address.city,
  user: User.all.sample,
  tag_list: "Have kids",
  img_url: homes.sample
)
end

puts "... created #{Homestay.count} homestays."

15.times do
  Booking.create!(booking_start: Faker::Date.backward(days: 14),
  booking_end: Date.today,
  user: User.all.sample,
  homestay: Homestay.all.sample)
end

puts "... created #{Booking.count} booking."
