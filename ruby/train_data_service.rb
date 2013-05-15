class TrainDataService
  def initialize(url)
  end

  def seats_for_train(train_id)
    [
      Seat.new('A', 1),
      Seat.new('B', 2),
      Seat.new('B', 3),
      Seat.new('B', 4)
    ]
  end
end
