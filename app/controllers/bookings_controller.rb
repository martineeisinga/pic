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
        redirect_to profile_path
      end
  end

  private

    def booking_params
      params.require(:booking).permit(:check_in, :check_out, :guests)
    end
end
