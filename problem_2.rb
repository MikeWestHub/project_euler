class Fibonacci
  attr_reader :num
  
  # Implement a soluition that accepts a fibonacci sequence limit
  def initialize(num)
    @num = num
  end

  def fib_r(a, b, n)
    n == 0 ? a : fib_r(b, a + b, n - 1)
  end  

  def fib(n)
    fib_r(0, 1, n)
  end

  def sequence
    (0..num).map{ |n| fib(n) }
  end

  def evens
    sequence.select{ |n| n % 2 == 0 }
  end

  def sum_of_evens
    evens.reduce(0, :+)
  end
end

puts Fibonacci.new(33).sum_of_evens
