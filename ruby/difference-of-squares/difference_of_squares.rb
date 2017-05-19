class Squares
  
  def initialize(x)
    @number = x
  end

  # given a natural number @number, return the square of the sum of all 
  # numbers 1 to @number. 
  def square_of_sum
    value = 0
    (1..@number).each do |x|
      value = value + x
    end
    value = value*value
  end 
  
  # given a natural number @number, return the sum of all the squares of
  # all numbers 1 to @number.
  def sum_of_squares
    value = 0
    (1..@number).each do |x|
      value = value + (x*x)
    end 
    return value
  end
  
  # return the difference between the square_of_sum and the sum_of_squares
  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end