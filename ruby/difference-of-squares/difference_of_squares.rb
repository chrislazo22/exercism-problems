class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).inject(:+) ** 2
  end

  def sum_of_squares
    sum_of_squares = (1..number)
    counter = 0
    sum_of_squares.each do |num|
      counter = counter + num ** 2
    end
    counter
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
