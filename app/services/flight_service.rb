class FlightService

  def initialize(attributes)
    @trip = attributes[:trip]
    @booking = attributes[:booking]
  end

  def call
    create_the_redirect
  end

  private

  def create_the_redirect
    from = Booking.flight_code(@booking.current_location)
    to = Booking.flight_code(@trip.location)
    leaving_date = @booking.check_in
    return_date = @booking.check_out
    "https://www.google.com/flights/#search;f=#{from},YJB;t=#{to},ZYA;d=#{leaving_date};r=#{return_date}"
  end
end
