class Grains
  def self.square(n)
    self.raise_error(n)
    self.grain_per_sqaure(n)
  end

  def self.total
    total_grains = 0

    (1..64).each do |n|
      total_grains += (n - (n - 2)) ** (n - 1)
    end
    total_grains
  end

  def self.grain_per_sqaure(n)
    (n - (n - 2)) ** (n - 1)
  end

  def self.raise_error(n)
    if n <= 0 || n > 64
      raise ArgumentError
    end
  end
end

module BookKeeping
  VERSION = 1
end
