class Raindrops

  def self.convert(x)
    value = ''
    calculateFactors(x).each do |check|
      if SOUNDS.key?(check)
        value << SOUNDS[check]
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
  
  # Define sounds. New sounds can be added to this hash
  SOUNDS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

end 

module BookKeeping
  VERSION = 3
end
