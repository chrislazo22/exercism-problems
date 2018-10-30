require 'pry'
class ETL
  def self.transform(old)
    new_code = {}

    old.each do |score, letters|
      letters.each do |letter|
        new_code[letter.downcase] = score
      end
    end
    new_code
  end
end

module BookKeeping
  VERSION = 1
end
