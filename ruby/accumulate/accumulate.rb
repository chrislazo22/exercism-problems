class Array
  def accumulate
    result = []
    self if self.empty?

    self.each do |element|
      result << yield(element)
    end

    result
  end
end
