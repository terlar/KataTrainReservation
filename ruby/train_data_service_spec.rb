require_relative 'train_data_service'

describe TrainDataService do
  let(:url) { 'http://localhost:8081' }
  subject(:service) { TrainDataService.new(url) }

  describe '#seats_for_train(:train_id)' do
    it 'is an array of seats' do
      seats = service.seats_for_train('express_2000')
      expect(seats).to be_an(Array)
      expect(seats.first).to be_a(Seat)
    end
  end
end
