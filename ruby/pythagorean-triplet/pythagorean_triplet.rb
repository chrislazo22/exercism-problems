require 'pry'

class Triplet
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    (a**2 + b**2) == c**2
  end

  def self.where(max_factor)
    binding.pry
  end
end

