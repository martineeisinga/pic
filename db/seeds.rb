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
snow
beach = Category.create(name: "beach", photo: 'beach.jpg')
beach
mountain = Category.create(name: "mountain", photo: 'mountain.jpg')
mountain
city = Category.create(name: "city", photo: 'city.jpg')
city
desert = Category.create(name: "desert", photo: 'desert.jpg')
desert
jungle = Category.create(name: "jungle", photo: 'jungle.jpg')
jungle


categories = []

categories = [jungle, desert, city, mountain, beach, snow]
# puts "seeding starts..."
# omar = User.create(email: "omar@omar.com", password: "123456", username: "omar")
# madrid = Trip.create(name: "oriental", location: "madrid", description: "awesome", price_experience: 5, user_id: omar.id, category_id: snow.id)
# barcelona = SavedTrip.create(user_id: omar.id, trip_id: madrid.id, location: "madrid")

users = []
martine = User.create(email: "martine@gmail.com", password: "123456", username: "martine", remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849022/pic-n-travel/Trips/martine.png")
emilio = User.create(email: "emilio@gmail.com", password: "123456", username: "emilio", remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849021/pic-n-travel/Trips/emilio.png")
omar = User.create(email: "omar@gmail.com", password: "123456", username: "omar", remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849021/pic-n-travel/Trips/omar.png")
jakob = User.create(email: "jakob@gmail.com", password: "123456", username: "jakob", remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849021/pic-n-travel/Trips/jakob.png")
madi = User.create(email: "madi@gmail.com", password: "123456", username: "madi", remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849021/pic-n-travel/Trips/madi.png")
users = [martine, emilio, omar, jakob, madi]


    finland = Trip.new(
      name: "Finland Winter Trip",
      hotel_name: "Kakslauttanen Resort",
      location: "Kakslauttanen, Finland",
      description: "Surrounded by nature, this unique property is located in the Saariselkä Fell region of Finnish Lapland. The property offers glass igloos and traditional wood chalets and has the world’s largest smoke sauna. Free WiFi and free parking are available.",
      price_experience: rand(200..1000),
      link_hotel: "http://www.kakslauttanen.fi/",
      user: martine,
      category: snow,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513848371/pic-n-travel/Trips/finland.jpg"
      )

    finland_restaurant = Activity.new(
      activity_type: "Restaurant",
      name: "Laanilan kievari",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513848371/pic-n-travel/Trips/finland_restaurant.jpg",
      description: "Very nice restaurant if you want to taste reindeer food!",
      link_activity: "http://www.laanilankievari.fi/",
      trip: finland
      )

    ibiza = Trip.new(
      name: "Ibiza Chill",
      hotel_name: "Destino",
      location: "Ibiza, Spain",
      description: "Gazing above the cliff top of Cap Martinet in Talamanca Bay, Destino Pacha Ibiza Resort offers sweeping panoramic views of the Mediterranean Sea, Dalt Vila (Ibiza's old town) and the island of Formentera. Enjoy a cocktail day by the Cherry pool and book a massage at the Wellness center.",
      price_experience: rand(200..1000),
      link_hotel: "https://www.destinoibiza.com/",
      user: madi,
      category: beach,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513241894/pic-n-travel/destino.jpg"
      )

    ibiza_restaurant = Activity.new(
      activity_type: "Restaurant",
      name: "Cotton Beach Club",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513849667/pic-n-travel/cotton.jpg",
      description: "Cotton Beach Club is just great for sundown cocktails",
      link_activity: "http://cottonbeachclub.com/",
      trip: ibiza
      )

    cartagena = Trip.new(
      name: "Colombian experience",
      hotel_name: "Santa Clara",
      location: "Cartegena, Colombia",
      description: "Gazing above the cliff top of Cap Martinet in Talamanca Bay, Destino Pacha Ibiza Resort offers sweeping panoramic views of the Mediterranean Sea, Dalt Vila (Ibiza's old town) and the island of Formentera. Enjoy a cocktail day by the Cherry pool and book a massage at the Wellness center.",
      price_experience: rand(200..1000),
      link_hotel: "https://www.destinoibiza.com/",
      user: madi,
      category: beach,
      remote_photo_url:
      )

finland.save
finland_restaurant.save
ibiza.save
ibiza_restaurant.save

puts "seeding stops"


