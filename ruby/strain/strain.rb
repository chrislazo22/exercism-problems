class Array
  def keep
    self.empty? ? self : self.select { |element| yield(element) }
  end

  def discard
    self.empty? ? self : self.select { |element| !(yield(element)) }
  end
end
