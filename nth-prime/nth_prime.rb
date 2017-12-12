require 'pry'
class Prime
  PRIMES = [0]

  def self.is_prime?(num)
    (2...num).each do |divisor|
      binding.pry
      return false if num % divisor == 0
    end
  end

  def self.add_primes_to_array
    (2..1000).each do |num|
      PRIMES << num if self.is_prime?(num)
    end
  end

  def self.nth(number)
    if number == 0
      raise ArgumentError
    end

    self.add_primes_to_array

    PRIMES.each_with_index do |prime, index|
      if number == index
        return prime
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end
