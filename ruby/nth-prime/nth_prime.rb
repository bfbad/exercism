class Prime

  # Returns the n'th prime number (eg 2 if n = 1, 3 if n = 2 ...)
  def self.nth(n)
    if n < 1
      raise ArgumentError, 'n must be at least 1'
    end
    primes = Sieve.new(15*n).primes
    primes[n-1]
  end
end

class Sieve
  def initialize(max_number)
    @numbers = [*2..max_number]
  end

  def primes
    @numbers.each do |num1|
      @numbers.delete_if { |num2| num2 != num1 && (num2 % num1).zero? }
    end
    @numbers
  end
end

module BookKeeping
  VERSION = 1
end
