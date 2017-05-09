class Hamming
  def self.compute(a,b)
    raise ArgumentError, 'Strand length not the same' unless a.length == b.length
    a.chars.zip(b.chars).count{|x| x[0]!=x[1]}
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end