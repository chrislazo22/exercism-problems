class ETL
  def self.transform(old)
    new_etl = {}

    old.each do |scores|
      scores[1].each do |letter|
        new_etl[letter.downcase] = scores.first
      end
    end

    new_etl
  end
end

