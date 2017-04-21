class Hamming
  def self.compute(a,b)
    if a == b
      return 0
    end
    strand1 = a.chars
    strand2 = b.chars
    raise ArgumentError, 'Strand length not the same' unless strand1.length == strand2.length
    strand1 = strand1.zip(strand2)
    distance = strand1.count{|x| x[0]!=x[1]}
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end