class Hamming
  def self.compute(str_1, str_2)
    str_1 = str_1.split('')
    str_2 = str_2.split('')
    counter = 0

    if str_1.size != str_2.size
      raise ArgumentError.new("Only same number arrays allowed")

    else
      while str_1.count > 0
        if str_1.first != str_2.first
          counter = counter + 1
          str_1.shift
          str_2.shift
        else
          str_1.shift
          str_2.shift
        end
      end
      counter
    end
  end
end

module BookKeeping
  VERSION = 3
end
