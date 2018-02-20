class BinaryGap
  def binary_gap(n)
    if is_less_than_or_equal_to_zero?(n)
      return 0
    else
      n.to_s(2).scan(/(?<=1)0+(?=1)/).max.length
    end
  end

  def is_less_than_or_equal_to_zero?(n)
    n <= 0
  end
end
