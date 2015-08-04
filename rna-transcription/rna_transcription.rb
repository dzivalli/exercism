class Complement
  def self.of_dna(strand)
    self.change strand, 'U'
  end

  def self.of_rna(strand)
    self.change strand, 'T'
  end

  private 

  def self.change(strand, exception)
    raise ArgumentError if strand == exception
    strand.gsub(/[GCTAU]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'U' => 'A', 'A' => exception)
  end
end   
