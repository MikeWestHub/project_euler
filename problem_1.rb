class GetRange
  attr_reader :range 

  def initialize(range)
    @range = range
  end

  def find_multiples
    numbers = []
    range.each do |n|
      if n % 3 == 0 || n % 5 == 0 
        numbers << n
      end
    end
    numbers
  end

  def sum_of_range
    find_multiples.reduce(0, :+)
  end
end

range = GetRange.new(1...1000)
answer = range.sum_of_range
puts answer
