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
Activity.destroy_all



snow = Category.create(name: "snow", photo: 'snow.jpg')
beach = Category.create(name: "beach", photo: 'beach.jpg')
mountain = Category.create(name: "mountain", photo: 'mountain.jpg')
city = Category.create(name: "city", photo: 'city.jpg')
dessert = Category.create(name: "dessert", photo: 'desert.jpg')
jungle = Category.create(name: "jungle", photo: 'jungle.jpg')

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
pic11 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513338597/winter_iuaqga.jpg"
pic12 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513338598/jungle2_e3xmnh.jpg"
pic13 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513338597/maledives_h4vam0.jpg"
pic14 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513338597/sea_ovybe7.jpg"
pic15 = "http://res.cloudinary.com/dh46jpozr/image/upload/v1513338597/jungle_l8bq2n.jpg"

desc1 = "One of the gladdest moments of human life, methinks, is the departure upon a distant journey into unknown lands. Shaking off with one mighty effort the fetters of habit, the leaden weight of routine, the cloak of many cares and the slavery of home, man feels once more happy."
desc2 = "Twenty years from now you will be more disappointed by the things that you didn’t do than by the ones you did do. So throw off the bowlines. Sail away from the safe harbor. Catch the trade winds in your sails. Explore. Dream. Discover."
desc3 = "We live in a wonderful world that is full of beauty, charm and adventure. There is no end to the adventures we can have if only we seek them with our eyes open."
desc4 = "He who has seen one cathedral ten times has seen something; he who has seen ten cathedrals once has seen but little; and he who has spent half an hour in each of a hundred cathedrals has seen nothing at all."
desc5 = "I travel the world, and I’m happy to say that America is still the great melting pot – maybe a chunky stew rather than a melting pot at this point, but you know what I mean."
desc6 = "Better far off to leave half the ruins and nine-tenths of the churches unseen and to see well the rest; to see them not once, but again and often again; to watch them, to learn them, to live with them, to love them, till they have become a part of life and life’s recollections."
desc7 = "People who don’t travel cannot have a global view, all they see is what’s in front of them. Those people cannot accept new things because all they know is where they live."
desc8 = "When you travel, remember that a foreign country is not designed to make you comfortable. It is designed to make its own people comfortable."
desc9 = "In both business and personal life, I’ve always found that travel inspires me more than anything else I do. Evidence of the languages, cultures, scenery, food, and design sensibilities that I discover all over the world can be found in every piece of my jewelry."
desc10 = "Tourists don’t know where they’ve been, travelers don’t know where they’re going."
desc11 = "Travel has a way of stretching the mind. The stretch comes not from travel’s immediate rewards, the inevitable myriad new sights, smells and sounds, but with experiencing firsthand how others do differently what we believed to be the right and only way."
desc12 = "You do not travel if you are afraid of the unknown, you travel for the unknown, that reveals you with yourself"


descriptions = [
desc1,
desc2,
desc3,
desc4,
desc5,
desc6,
desc7,
desc8,
desc9,
desc10,
desc11,
desc12
]

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
  pic10,
  pic11,
  pic12,
  pic13,
  pic14,
  pic15,
]

categories = []



categories = [jungle, dessert, city, mountain, beach, snow]

puts "seeding starts..."
omar = User.create(email: "omar@omar.com", password: "123456", username: "omar")
madrid = Trip.create(name: "oriental", location: "madrid", description: "awesome", price_experience: 5, user_id: omar.id, category_id: snow.id)
barcelona = SavedTrip.create(user_id: omar.id, trip_id: madrid.id, location: "madrid")

10.times do
  user = User.create(email: Faker::Internet.free_email, password: "123456", username: Faker::Name.first_name)
  user.save

  rand(0..5).times do
    url = pictures.sample
    trip = Trip.new(
      name: Faker::Name.first_name,
      hotel_name: Faker::Name.first_name + "Hotel",
      location: Faker::Name.first_name,
      description: descriptions.sample,
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

puts "seeding stops"

# trip.remote_photo_url = "adfsadfaefg"
# trip.save

