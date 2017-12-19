class BookingsController < ApplicationController
  def create


    @trip = Trip.find(params[:trip_id])
    if !current_user
      redirect_to new_user_registration_path
    end

    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.trip = @trip

      if @booking.save

        # CHECK IF BOOKED TRIP WAS ALREADY A SAVED TRIP
         booked_trip = @booking.trip_id
         saved_trips = []
         current_user.saved_trips. each do |saved_trip|
          saved_trips << saved_trip.trip_id

         end

         # MAKE NEW SAVED TRIP FOR BOOKING IF NOT ALREADY CREATED
         if !saved_trips.include?(booked_trip)
          saved_trip = SavedTrip.create(user: current_user, trip: @booking.trip)
          current_user.saved_trips << saved_trip
         end

         redirect_user = FlightService.new(trip: @trip, booking: @booking).call
                          raise

         redirect_to 'https://www.google.com/flights/#search;f=BCN,YJB;t=AMS,ZYA;d=2018-01-05;r=2018-01-08'
      else
        flash[:alert] = "Already booked that trip"
        render "trips/show"
      end
  end

  private

    def booking_params
      params.require(:booking).permit(:check_in, :check_out, :guests, :current_location)
    end
end
