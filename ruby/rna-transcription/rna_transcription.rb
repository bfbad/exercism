class Complement 
 
  def self.of_dna(dna)
  	unless dna =~ /\A[GCTA]+\z/
  	  return ''
  	end
    complement_nts = { 'G' => 'C', 'C' => 'G', 
    	              'T' => 'A', 'A' => 'U' }
    rna = [];
    dna.chars.each{ |x| rna.push(complement_nts[x]) }
    rna.join
  end

end


module BookKeeping
  VERSION = 4
end