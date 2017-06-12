class Year

  # returns true if year is a leap year. otherwise, returns false.
  def self.leap?(year)
    (year % 4).zero? && (year % 100).nonzero? || (year % 400).zero
  end
end

module BookKeeping
  VERSION = 3
end