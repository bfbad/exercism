class Squares
  
  def initialize(x)
    @number = x
  end

  # given a natural number @number, return the square of the sum of all 
  # numbers 1 to @number. 
  def square_of_sum
    (1..@number).sum**2 # a**b = a^b
  end 
  
  # given a natural number @number, return the sum of all the squares of
  # all numbers 1 to @number.
  def sum_of_squares
    (1..@number).map{|n| n*n}.sum
  end
  
  # return the difference between the square_of_sum and the sum_of_squares
  def difference
    square_of_sum - sum_of_squares
  end

end

module BookKeeping
  VERSION = 3
end