class SavedTripsController < ApplicationController
   def create
    @trip = Trip.find(params[:trip_id])
    if !current_user
      redirect_to new_user_registration_path
    end
    @saved_trip = SavedTrip.new
    @saved_trip.user = current_user
    @saved_trip.trip = @trip
      if @saved_trip.save
        redirect_to profile_path
      end
  end
end
