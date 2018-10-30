require 'pry'

class Raindrops
  def convert(number)
    number_hash = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong',
    }

    message = ""


    number_hash.each do |num, word|
      message << word if number % num == 0
    end
  end
end

number = Raindrops.new
number.convert(3)
