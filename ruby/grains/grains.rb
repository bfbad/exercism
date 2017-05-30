class Grains
  # Returns the number of grains on square_number based upon a double of grains from the previous square.
  def self.square(square_number)
    raise ArgumentError, "square_number must be at least one" unless square_number > 0
    raise ArgumentError, "square_number must be no more than 64" unless square_number < 65
    grains = 1
    (2..square_number).each do |x|
      grains = grains * 2
    end
    grains
  end

  def self.total
    grains = 1  
    (2..64).each do |x|
      grains = grains + Grains.square(x)
    end
    grains
  end

end

module BookKeeping
  VERSION = 1
end
