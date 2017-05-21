class Sieve

  # initialize the object with a "test array" consisting of a hash of all the values between 2 and number 
  def initialize(number)
    @test_array = []
    (2..number).each do |x|
      @test_array.push({:number => x, :is_a_multiple => false})
    end
  end
  
  # return all primes included in the test array
  def primes
    result = []
    @test_array.each do |x|
      if x[:is_a_multiple] == false
        result.push x[:number]
        update_multiples(x)
      end
    end
    result
  end
  
  private 

  # based on the current hash value, update @test_array to flag any multiples of the current_hash[:number]
  def update_multiples(current_hash)
    @test_array.select{ |hash| hash[:number] % current_hash[:number] == 0 }.each do |x|
      x[:is_a_multiple] = true
    end
  end

end

module BookKeeping
  VERSION = 1
end