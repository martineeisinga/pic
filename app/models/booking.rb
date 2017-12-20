class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  # validates_uniqueness_of :user_id, scope: :trip_id

  after_create :redirect_to_flight


  def redirect_to_flight
    # hello = 'trip'
    # url = FlightService.new(trip: trip, booking: booking).call
  end

  def self.flight_code(city)
    case city.downcase
    when "amsterdam"
      return "AMS"
    when "barcelona"
      return "BCN"
    when "miami"
      return "MIA"
    else
      return "BCN"
    end
  end

end
