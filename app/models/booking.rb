class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user

  # validates_uniqueness_of :user_id, scope: :trip_id

  def self.flight_code(city)
    case city
    when "Amsterdam"
      return "AMS"
    when "Barcelona"
      return "BCN"
    when "Miami"
      return "MIA"
    end
  end

end
