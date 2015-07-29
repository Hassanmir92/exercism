class Complement
  VERSION = 1
  VALID_DNA = ['C', 'G', 'T', 'A']
  VALID_RNA = ['C', 'G', 'U', 'A']

  def self.of_dna(strand)
    raise ArgumentError if valid_dna?(strand)
    strand.tr *['CGTA', 'GCAU']
  end

  def self.of_rna(strand)
    raise ArgumentError if valid_rna?(strand)
    strand.tr *['GCAU', 'CGTA']
  end

  def self.valid_dna?(strand)
    valid = VALID_DNA - strand.split('')
    !(valid.length < 4)
  end

  def self.valid_rna?(strand)
    valid = VALID_RNA - strand.split('')
    !(valid.length < 4)
  end
  
end
