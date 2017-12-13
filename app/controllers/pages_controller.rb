class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = Category.all

    if params['category']
      cat = Category.where(name: params['category']).first
      @trips = Trip.where(category_id: cat.id)
    else
       @trips = Trip.all
     end
  end

  def profile
    @user = current_user
  end
end
