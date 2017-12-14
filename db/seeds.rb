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



pic1 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241894/pic-n-travel/hotel1.jpg"
pic2 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241894/pic-n-travel/snow.jpg"
pic3 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241894/pic-n-travel/destino.jpg"
pic4 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241784/pic-n-travel/train.jpg"
pic5 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/travel.jpg"
pic6 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/italy.jpg"
pic7 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/mountain.jpg"
pic8 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/asia.jpg"
pic9 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/photo-1499952748986-01abb469a8d5.jpg"
pic10 ="http://res.cloudinary.com/dh46jpozr/image/upload/v1513241783/pic-n-travel/syndney.jpg"

pictures = [
  pic1,
  pic2,
  pic3,
  pic4,
  pic5,
  pic6,
  pic7,
  pic8,
  pic9,
  pic10
]

categories = []

snow = Category.create(name: "snow")
beach = Category.create(name: "beach")
mountain = Category.create(name: "mountain")
city = Category.create(name: "city")
dessert = Category.create(name: "dessert")
jungle = Category.create(name: "jungle")

categories = [jungle, dessert, city, mountain, beach, snow]

puts "seeding starts"
omar = User.create(email: "omar@omar.com", password: "123456", username: "omar")
madrid = Trip.create(name: "oriental", location: "madrid", description: "awesome", price_experience: 5, user_id: omar.id, category_id: snow.id)
puts "seeding stops"


10.times do
  user = User.create(email: Faker::Internet.free_email, password: "123456", username: Faker::Name.first_name)
  user.save

  rand(0..5).times do
    url = pictures.sample
    trip = Trip.new(
      name: Faker::Name.first_name + " Hotel",
      location: Faker::Name.first_name,
      description: Faker::Name.first_name,
      price_experience: rand(200..1000),
      user_id: user.id,
      category_id: categories.sample.id
      )
    trip.remote_photo_url = url
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

# trip.remote_photo_url = "adfsadfaefg"
# trip.save

