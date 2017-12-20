class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :banner]

  def home
    @categories = Category.all

    if params['category']
      cat = Category.where(name: params['category']).first
      @trips = Trip.where(category_id: cat.id).order("trips.created_at desc").paginate(page: params[:page], per_page: 20)
    else
       @trips = Trip.all.order("trips.created_at desc").paginate(page: params[:page], per_page: 20)
     end
  end

  def profile
    @user = current_user
    @saved_trips = @user.saved_trips.where.not(latitude: nil, longitude: nil)     # trips the user would like to make
    @bookings = @user.bookings # Trips the user has booked and saved
    @trips = @user.trips.where.not(latitude: nil, longitude: nil) # trips the user has created

    # @trips_map = Trip.where.not(latitude: nil, longitude: nil)

    @markers = Gmaps4rails.build_markers(@trips) do |trip, marker|
      marker.lat trip.latitude
      marker.lng trip.longitude
      marker.picture({
        url: "http://www.ultimasnoticiasenred.com.mx/wp-content/themes/ultimasnoticias/img/pin.png",
        # url: "https://www.price.com.hk/images/icon/ico-rating-star-30x30-yellow.png", # up to you to pass the proper parameters in the url, I guess with a method from device
        width: 36,
        height: 36
      })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

      @markers2 = Gmaps4rails.build_markers(@saved_trips) do |saved_trip, marker|
      marker.lat saved_trip.latitude
      marker.lng saved_trip.longitude
      marker.picture({
        url: "http://www.toulouse.aeroport.fr/sites/default/files/menuimage/ico-plane-1_0.png", # up to you to pass the proper parameters in the url, I guess with a method from device
        width: 36,
        height: 36
      })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end


  end

  def banner
    @banner_page = true

  end
end
