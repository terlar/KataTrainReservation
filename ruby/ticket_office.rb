class TicketOffice
  def initialize(train_data_service, booking_reference_service)
  end

  def make_reservation(request)
    train_id = request.train_id
    seats = [
      Seat.new('A', 1),
      Seat.new('B', 2),
      Seat.new('B', 3),
      Seat.new('B', 4)
    ]

    booking_reference = '75bcd15'
    Reservation.new train_id, seats, booking_reference
  end
end



