class MultiplesOfThreeAndFive
  attr_reader :range 

  def initialize(range)
    @range = range
  end

  def filter_range
    range.select { |n| (n % 3 == 0) || (n % 5 == 0) }
  end
  
  def sum_of_range
    filter_range.reduce(0, :+)
  end
end

answer = MultiplesOfThreeAndFive.new(1...1000).sum_of_range
puts answer
