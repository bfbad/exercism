class Sieve

  # initialize the object with a "test array" consisting of a value of true for any number that is a multiple
  def initialize(number)
    @max = number
    @test_array = [nil, nil]
    (2..number).each do |x|
      case x
        when x%2 == 0 
          @test_array.push(true)
        else
          @test_array.push(false)
      end
    end
  end
  
  # return all primes included in the test array
  def primes
    result = []
    (2..@max).each do |x|
      if @test_array[x] == false
        result.push(x)
        update_multiples(x)
      end
    end
    result
  end
  
  private 

  # based on the current hash value, update @test_array to flag any multiples of the current_hash[:number]
  def update_multiples(current_number)
    (current_number..@max).each do |x|
      if x % current_number == 0
        @test_array[x] = true
      end
    end
  end
end

module BookKeeping
  VERSION = 1
end