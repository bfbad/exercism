class Raindrops
  def self.convert(x)
    factors = calculateFactors(x);
    value = ''
    factors.each do |check|
      case check
        when 3
          value << "Pling"
        when 5
          value << "Plang"
        when 7
          value << "Plong"
      end
    end 
    value.empty? ? x.to_s : value
  end
  
  # number must be an integer
  # returns the factors of number as an array
  def self.calculateFactors(number)
    factorsArray = []
    (1..number).each do |y|
      if number % y == 0
        factorsArray.push(y)
      end 
    end
    return factorsArray
  end

end 

module BookKeeping
  VERSION = 3
end
