class ResistorColorDuo
  COLOR_MAPPER = [
    'black', 'brown', 'red', 'orange', 'yellow', 'green', 'blue', 'violet', 'grey', 'white'
  ]

  def self.value(colors)
    colors.first(2).map { |color| COLOR_MAPPER.find_index(color) }.join.to_i
  end
end
