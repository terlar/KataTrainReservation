require 'net/http'
require_relative 'reservations'

class TrainDataService
  attr_reader :base_url

  def initialize(url)
    @base_url = url
  end

  def seats_for_train(train_id)
    [
      Seat.new('A', 1),
      Seat.new('A', 2),
      Seat.new('A', 3),
      Seat.new('B', 4),
      Seat.new('B', 5),
      Seat.new('B', 6)
    ]
  end

  def build_seat(data)
    Seat.new(
      data[:coach],
      data[:seat_number]
    )
  end
end
