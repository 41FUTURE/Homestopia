# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all users..."
User.destroy_all
puts "Destroying all homestays..."
Homestay.destroy_all
puts "Destroying all bookings..."
Booking.destroy_all

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: "1234567890",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: rand(20..50).sample,
    gender: ["male", "female"].sample,
    description: Faker::Lorem.sentence)
end

puts "... created #{User.count} users."

15.times do
  Homestay.create!(number_of_users: rand(1..4),
  comments: "Best home", price: rand(20..50),
  availability: true,
  family_description: Faker::Lorem.sentence,
  accomodation: ["apartment", "home"].sample,
  address: Faker::Address.street_address,
  country: Faker::Address.country,
  city: Faker::Address.city,
  optionals: ["pets", "kids", "smoking"].samlpe(3),
  user: User.all.sample)
end

puts "... created #{Homestay.count} homestays."

15.times do
  Booking.create!(booking_start: Faker::Date.backward(days: 14),
  booking_end: Date.today,
  user: User.all.sample,
  homestay: Homestay.all.sample)
end

puts "... created #{Booking.count} booking."
