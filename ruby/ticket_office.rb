require_relative 'train_data_service'
require_relative 'booking_reference_service'

class TicketOffice
  attr_reader :train_data_service, :booking_reference_service

  def initialize(train_data_service_url, booking_reference_service_url)
    @train_data_service = TrainDataService.new(train_data_service_url)
    @booking_reference_service = BookingReferenceService.new(booking_reference_service_url)
  end

  def make_reservation(request)
    train_id = request.train_id
    seats = train_data_service.seats_for_train(train_id)
    booking_reference = booking_reference_service.reference

    Reservation.new train_id, seats, booking_reference
  end
end



