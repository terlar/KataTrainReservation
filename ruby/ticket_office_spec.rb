require_relative 'ticket_office'
require_relative 'reservations'

describe TicketOffice do
  let(:train_data_service) { :train_data_service_url }
  let(:booking_reference_service) { :booking_reference_url }
  subject(:office) { TicketOffice.new(train_data_service, booking_reference_service) }

  describe 'make_reservation(:request)' do
    let(:request) { stub(:request, train_id: 'express_2000', seat_count: 4) }

    it 'returns a reservation' do
      reservation = office.make_reservation(request)
      expect(reservation).to be_a(Reservation)
    end

    context 'reservation' do
      subject(:reservation) { office.make_reservation(request) }

      it 'has 4 seats' do
        expect(reservation.seats).to have(4).items
      end

      it 'has a first seat of type coach A' do
        first_seat = reservation.seats.first
        expect(first_seat.coach).to eq('A')
      end

      it 'has a booking reference' do
        expect(reservation.booking_reference).to eq('75bcd15')
      end
    end
  end

end
