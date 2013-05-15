require_relative 'ticket_office.rb'

describe TicketOffice do
  let(:booking_reference) { :booking_reference_url }
  let(:train_data_service) { :train_data_service_url }
  subject(:office) { TicketOffice.new(booking_service, train_data_service) }

  describe 'make_reservation(:request)' do
    let(:request) { stub(:request) }

    it 'returns a reservation' do
      reservation = office.make_reservation(request)
      expect(reservation).to be_a(Reservation)
    end

    context 'reservation' do
      subject(:reservation) { office.make_reservation(request) }

      it 'has 4 seats' do
        expect(reservation.seats).to have_size(4)
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
