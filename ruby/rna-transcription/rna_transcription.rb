class Complement
  VERSION = 3
  RNA_MAPPING = {'G' => 'C',
                 'C' => 'G',
                 'T' => 'A',
                 'A' => 'U' }

  def self.map_char(char)
    mapped = RNA_MAPPING[char]
    if mapped.nil?
      raise ArgumentError
    end
    mapped
  end

  def self.of_dna(strand)
    strand.split('').map do |char|
      self.map_char(char)
    end.join
  end


end

Complement.of_dna('GA') # => "CU"
