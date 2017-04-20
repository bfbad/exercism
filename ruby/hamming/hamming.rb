class Hamming
 
  def self.compute(a,b)
    strand1 = a.scan
    strand2 = b.scan
    counter = 0
    strand1.each do |i|
      if strand1[i] != strand2[i]
        counter++
      end
    end
    counter
  end
end

Hamming.compute("A", "B")