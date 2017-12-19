class FlightService

  def initialize(attributes)
    @trip = attributes[:trip]
    @booking = attributes[:booking]
  end

  def call
    return "whatever"
  end

end
