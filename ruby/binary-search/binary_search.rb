require 'pry'

class BinarySearch
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers

    raise ArgumentError if !(list == numbers)
  end

  def list
    numbers.sort
  end

  def search_for(key)
    raise RuntimeError if !(list.include?(key))

    list.find_index(key)
  end

  def middle
    numbers.length / 2
  end
end
