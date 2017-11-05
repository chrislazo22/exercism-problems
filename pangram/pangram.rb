require 'pry'

class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |word| phrase.downcase.include? (word) }
  end
end

module BookKeeping
  VERSION = 6
end
