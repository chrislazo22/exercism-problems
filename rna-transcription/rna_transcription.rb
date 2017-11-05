class Complement
  def self.of_dna(strand)
    if strand =~ /[^CGTA]/
      return ''
    else
      strand.tr('CGTA', 'GCAU')
    end
  end
end

module BookKeeping
  VERSION = 4
end
