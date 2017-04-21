class Hamming
  def self.compute(a,b)
    if a == b
      return 0
    end
    strand1 = a.chars
    strand2 = b.chars
    raise ArgumentError, 'Strand length not the same' unless strand1.length == strand2.length
    counter = 0
    distance = 0
    strand1.each do |check|
      if check != strand2[counter]
        distance += 1
      end
        counter += 1
    end
    distance
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
