class ETL
  old = {
    1 => ["A", "E"]
  }
  def self.transform(old)
    new_code = {}
    old.each do |score, letter|
      new_code[letter[0].downcase] = score
    end
    new_code
  end
end
