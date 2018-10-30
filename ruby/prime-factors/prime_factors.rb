class PrimeFactors
  def self.for(number)
    return [] if number == 1

    divisors = []
    divisor = 2

    while number > 1
      if number % divisor == 0
        divisors.push(divisor)
        number = number / divisor
      else
        divisor = divisor + 1
      end
    end
    return divisors
  end
end
