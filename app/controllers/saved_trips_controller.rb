class SavedTripsController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    if !current_user
      redirect_to new_user_registration_path
    end
    @saved_trip = SavedTrip.new
    @saved_trip.user = current_user
    @saved_trip.trip = @trip
    @saved_trip.location = @trip.location
    if @saved_trip.save
      flash[:notice] = "#{@trip.name} has been saved"
      redirect_to home_path
    else
      redirect_to home_path
    end
  end

  def destroy
  end
end
