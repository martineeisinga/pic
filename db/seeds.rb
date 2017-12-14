# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Booking.destroy_all
User.destroy_all
Category.destroy_all
Trip.destroy_all
SavedTrip.destroy_all

categories = []


snow = Category.create(name: "snow", photo: 'snow_2.png')
beach = Category.create(name: "beach", photo: 'ocean_1.png')
mountain = Category.create(name: "mountain", photo: 'mountain_new.png')
city = Category.create(name: "city", photo: 'city_8.png')
dessert = Category.create(name: "dessert", photo: 'desert.png')
jungle = Category.create(name: "jungle", photo: 'jungle_new.jpeg')

categories = [jungle, dessert, city, mountain, beach, snow]

puts "seeding starts"
omar = User.create(email: "omar@omar.com", password: "123456", username: "omar")
madrid = Trip.create(name: "oriental", location: "madrid", description: "awesome", price_experience: 5, user_id: omar.id, category_id: snow.id)
puts "seeding stops"



10.times do
  user = User.create(email: Faker::Internet.free_email, password: "123456", username: Faker::Name.first_name)
  user.save

  rand(0..5).times do
    trip = Trip.new(
      name: Faker::Name.first_name,
      location: Faker::Name.first_name,
      description: Faker::Name.first_name,
      price_experience: rand(200..1000),
      user_id: user.id,
      category_id: categories.sample.id
      )
    trip.user = user
    trip.save
  end

  rand(0..2).times do
    booking = Booking.new(
      check_in: "23-02-2018",
      check_out: "23-04-2018",
      guests: rand(0..5)
      )
    booking.user = user
    booking.save
  end

end


