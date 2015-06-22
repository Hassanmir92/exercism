class Complement

  def self.of_dna(strand)
    if ['U'].include? strand
      raise ArgumentError
    else
      strand.tr *['CGTA', 'GCAU']
    end  
  end

  def self.of_rna(strand)
    if ['T'].include? strand
      raise ArgumentError
    else
      strand.tr *['GCAU', 'CGTA']
    end
  end
end
