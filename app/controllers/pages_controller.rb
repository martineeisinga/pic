class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Category.all

    if params['category']
      cat = Category.where(name: params['category']).first
      @trips = Trip.where(category_id: cat.id).order("trips.created_at desc")
    else
       @trips = Trip.all.order("trips.created_at desc")
     end
  end

  def profile
    @user = current_user
    @saved_trips = @user.saved_trips     # trips the user would like to make
    @bookings = @user.bookings # Trips the user has booked and saved
    @trips = @user.trips # trips the user has created

  end
end
