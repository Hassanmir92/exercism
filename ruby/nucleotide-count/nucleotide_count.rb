class Nucleotide
  def self.from_dna(string)
    nucleotides = string.chars
    raise ArgumentError.new("Invalid DNA #{string}") unless nucleotides.all?(&validate)
    new(nucleotides)
  end

  def self.validate
    proc { |nucleotide| %w(A C G T).include?(nucleotide) }
  end

  attr_reader :nucleotides

  def initialize(nucleotides)
    @nucleotides = nucleotides
  end

  def histogram
    {
      'A' => count('A'),
      'T' => count('T'),
      'G' => count('G'),
      'C' => count('C')
    }
  end

  def count(nucleotide)
    nucleotides.count(nucleotide)
  end
end
