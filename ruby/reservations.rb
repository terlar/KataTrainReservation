class ReservationRequest
  attr_reader :train_id
  attr_reader :seat_count

  def initialize(train_id, seat_count)
    @train_id = train_id
    @seat_count = seat_count
  end
end

class Reservation
  attr_reader :train_id
  attr_reader :seats
  attr_reader :booking_reference

  def initialize(train_id, seats, booking_reference)
    @train_id = train_id
    @seats = seats
    @booking_reference = booking_reference
  end
end

class Seat
  attr_reader :coach
  attr_reader :number

  def initialize(coach, number)
    @coach = coach
    @number = number
  end
end
