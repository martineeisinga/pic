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
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513854716/cotton-2_qlnozx.jpg",
      description: "Cotton Beach Club is just great for sundown cocktails",
      link_activity: "http://cottonbeachclub.com/",
      trip: ibiza
      )

    cartagena = Trip.new(
      name: "Colombian experience",
      hotel_name: "Santa Clara",
      location: "Cartegena, Colombia",
      description: "A perfect blend of vintage and contemporary, striking a balance between art and beauty to accommodate modernity and technology in unique surroundings.",
      price_experience: rand(200..1000),
      link_hotel: "http://www.sofitel.com/gb/hotel-1871-sofitel-legend-santa-clara-cartagena/index.shtml",
      user: emilio,
      category: beach,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513850057/cartagena_rfjoos.jpg"
      )

    cartagena_activity = Activity.new(
      activity_type: "Island visit",
      name: "Rosario Islands",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513855095/rosario_islands_bwqwe0.jpg",
      description: "Amazing trip!",
      link_activity: "https://www.viator.com/tours/Cartagena/Full-Day-Rosario-Islands-Including-Bar-Cholo-and-Playa-Blanca/d4498-34334P3",
      trip: cartagena
      )

    dubai = Trip.new(
      name: "Discover Dubai",
      hotel_name: "Sofitel Dubai",
      location: "Dubai",
      description: "Sofitel Dubai The Palm Resort & Spa offers a luxury beach holiday with stunning views over Dubai, a wide choice of restaurants and an amazing swimming pool.",
      price_experience: rand(200..1000),
      link_hotel: "http://www.sofitel.com/gb/hotel-6541-sofitel-dubai-the-palm-resort-spa/index.shtml",
      user: jakob,
      category: desert,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513691503/adltp7ydy1c0kne9gsno.jpg"
      )

    dubai_activity = Activity.new(
      activity_type: "Jeep drive",
      name: "Omar's Jeep Station",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513855942/dubai_desert_zv5ge0.jpg",
      description: "Thrilling!",
      link_activity: "https://www.toursbylocals.com/Dubai-Private-Tours?s=AW_17B_005B_%2Btouring%20%2Bdubai&gclid=CjwKCAiA1O3RBRBHEiwAq5fD_FIWW_0Gbhh26hVMDbyxAvxgja1leuoTRUu4wbUDaTAB9JneO6CrMxoCOJAQAvD_BwE",
      trip: dubai
      )

    dubai_restaurant = Activity.new(
      activity_type: "Restaurant",
      name: "Four Season Restaurant",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513850071/dubai_restaurant_wbikoo.jpg",
      description: "Best food!",
      link_activity: "https://www.fourseasons.com/content/fourseasons/en/properties/dubaijb/dining/",
      trip: dubai
      )

    himalaya = Trip.new(
      name: "Himalaya was top",
      hotel_name: "Hotel Himalaya",
      location: "Himalaya, Nepal",
      description: "Very nice hotel. Comfortable and clean rooms. Attentive staf and great service. Beautiful grounds with swimming pool.",
      price_experience: rand(200..1000),
      link_hotel: "http://hotelhimalaya.com.np/",
      user: martine,
      category: mountain,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513856730/Mountain_trip_jqtiph.jpg"
      )

    himalaya_hike = Activity.new(
      activity_type: "Hike",
      name: "Hiking Nepal",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513857002/hike_himalaya_msttm2.jpg",
      description: "Great experience in Mera Peak",
      link_activity: "http://www.hikingnepal.com/index.php",
      trip: himalaya
      )

    zurich = Trip.new(
      name: "Sportive Zurich Trip",
      hotel_name: "Park Hyatt Zurich",
      location: "Zurich, Swiss",
      description: "This modern city-centre hotel with spacious rooms and suites sets out to highlight sophisticated decor and culture.",
      price_experience: rand(200..1000),
      link_hotel: "https://zurich.park.hyatt.com/en/hotel/home.html?src=pfxeame_sem_google_zurph_rooms_ww_eng_gen_exact_Google_ZURPH_Rooms_WW_ENG_Gen+Hotel_exact_hotel%20zurich&mckv=sA1Rceui5-dc_pcrid_218128791320_mtid_5297kx13790",
      user: jakob,
      category: mountain,
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513691503/adltp7ydy1c0kne9gsno.jpg"
      )

    zurich_breakfast = Activity.new(
      activity_type: "Breakfast",
      name: "Cafe Schober",
      remote_photo_url: "http://res.cloudinary.com/dh46jpozr/image/upload/v1513857778/breakfast_vnk53d.jpg",
      description: "Not one to be missed in Zurich",
      link_activity: "http://www.peclard-zurich.ch/",
      trip: zurich,
      )



finland.save
finland_restaurant.save
ibiza.save
ibiza_restaurant.save
cartagena.save
cartagena_activity.save
dubai.save
dubai_activity.save
dubai_restaurant.save
himalaya.save
himalaya_hike.save

puts "seeding stops"


