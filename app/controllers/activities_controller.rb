class ActivitiesController < ApplicationController
  def new
    @trip = Trip.find(params[:trip_id])
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.trip = Trip.find(params[:trip_id])
    @trip = @activity.trip
    if @activity.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private
  def activity_params
    params.require(:activity).permit(:trip_type, :name, :photo, :photo_cache, :description, :trip_id)
  end

end
