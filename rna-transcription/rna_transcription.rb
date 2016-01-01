class Complement
  VERSION = 2 

  TRANSLATOR = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(nucleotide)
    rna = ""
    nucleotide.each_char do |char|
      raise ArgumentError if TRANSLATOR[char] == nil
      rna << TRANSLATOR[char]
    end
    rna
  end

  def self.of_rna(nucleotide)
    dna = ""
    nucleotide.each_char do |char|
      raise ArgumentError unless TRANSLATOR.has_value?(char)
      dna << TRANSLATOR.key(char)
    end
    dna 
  end
end

