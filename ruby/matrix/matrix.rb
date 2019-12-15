class Matrix
  attr_reader :matrix

  def initialize(matrix)
    @matrix = matrix
  end

  def rows
    result = []

    matrix.split("\n").each { |element| result << element.split.map(&:to_i) }

    result
  end

  def columns
    column_number = rows.first.length
    result = Array.new(column_number) { Array.new }

    rows.each do |row|
      row.each_with_index do |int, index|
        result[index] << int
      end
    end

    result
  end
end
