require 'pry'

class Game
  class BowlingError < ArgumentError; end

  attr_accessor :total_score, :total_pins

  def initialize
    @total_score = 0
    @total_pins = []
  end

  def roll(pins)
    if pins < 0 || pins > 10
      raise Game::BowlingError
    end

    total_pins << pins
  end

  def score
    frames = pins_per_frame(total_pins)

    scores = score_per_frame(frames)

    total_score = scores.inject(:+)
  end

  def pins_per_frame(pins)
    frames = []

    while pins.length > 0
      if pins[0] == 10
        frames << [pins.shift]
      else
        frames << pins.shift(2)
      end
    end

    frames
  end

  def score_per_frame(frames)
    scores = []
    first_nine_frames = frames.first(9)
    last_frame = frames[9..-1]

    first_nine_frames.each_with_index do |frame, index|
      if frame[0] == 10
        scores << calculate_strike(first_nine_frames, index)
      elsif frame.inject(:+) == 10
        scores << (10 + frames[index + 1][0])
      else
        scores << frame.inject(:+)
      end
    end

    scores << last_frame.inject(:+).inject(:+)
  end

  def calculate_strike(frames, index)
    if frames[index + 1][0] == 10
      10 + 10 + frames[index + 2].inject(:+)
    else
      10 + frames[index + 1].inject(:+)
    end
  end
end

