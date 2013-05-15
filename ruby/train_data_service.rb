class TrainDataService
  def initialize(url)
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
end
