class Complement

  def self.of_dna(strand)
    raise ArgumentError if ['U'].include? strand
    strand.tr *['CGTA', 'GCAU']
  end

  def self.of_rna(strand)
    raise ArgumentError if ['T'].include? strand
    strand.tr *['GCAU', 'CGTA']
  end
  
end
