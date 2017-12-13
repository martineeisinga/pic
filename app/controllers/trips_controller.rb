class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:create, :edit, :update, :destroy]
  def index
  end

  def show
    @booking = Booking.new
  end

  def new
    @categories = Category.all
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = @user

    if @trip.save
      redirect_to trip_path(@trip)
    end
  end

  def edit
    unless @trip.user == @user
      redirect_to trips_path
    end
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :price_experience, :date, :description, :category_id, :location, :photo, :photo_cache)
  end

  def set_user
    @user = current_user
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end

end
