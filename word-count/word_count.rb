require 'pry'
class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    count = Hash.new
    phrase.gsub!(/[,:!!&@$%^&".]/, " ")

    phrase.downcase.split.each do |word|
      count[word].nil? ? count[word] = 1 : count[word] += 1
    end
    count
  end
end

module BookKeeping
  VERSION = 1
end
