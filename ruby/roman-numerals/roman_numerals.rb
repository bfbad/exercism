class Integer

  def to_roman
    # First, find all of the values of each place and store it in an enumerable
    digits_array = break_into_digits(self)
    # Then, for each, find the string value associated. 
    thousands_value = find_thousands_value(digits_array[3])
    hundreds_value = find_hundreds_value(digits_array[2])
    tens_value = find_tens_value(digits_array[1])
    ones_value = find_ones_value(digits_array[0])
    thousands_value + hundreds_value + tens_value + ones_value
  end

  private 
  
  # returns the digits in an array in reverse order
  def break_into_digits(number)
    number.to_s.split('').map(&:to_i).reverse
  end
  
  # returns the string associated with the digits in thousands
  # assumes value is 3 or less.
  def find_thousands_value(digit)
    thevalue = ''
    case digit
      when 3
        thevalue = 'MMM'
      when 2
        thevalue = 'MM'
      when 1
        thevalue = 'M'
    end
    thevalue
  end
  
  # returns the string associated with the digits in hundreds
  def find_hundreds_value(digit)
    thevalue = ''
    case digit
      when 9
        thevalue = 'CM'
      when 8
        thevalue = 'DCCC'
      when 7
        thevalue = 'DCC'
      when 6
        thevalue = 'DC'
      when 5
        thevalue = 'D'
      when 4
        thevalue = 'CD'
      when 3
        thevalue = 'CCC'
      when 2
        thevalue = 'CC'
      when 1
        thevalue = 'C'
    end
    thevalue
  end

  # returns the string associated with the digits in tens
  def find_tens_value(digit)
    thevalue = ''
    case digit
      when 9
        thevalue = 'XC'
      when 8
        thevalue = 'LXXX'
      when 7
        thevalue = 'LXX'
      when 6
        thevalue = 'LX'
      when 5
        thevalue = 'L'
      when 4
        thevalue = 'XL'
      when 3
        thevalue = 'XXX'
      when 2
        thevalue = 'XX'
      when 1
        thevalue = 'X'
    end
    thevalue
  end

  # returns the string associated with the digits in ones
  def find_ones_value(digit)
    thevalue = ''
    case digit
      when 9
        thevalue = 'IX'
      when 8
        thevalue = 'VIII'
      when 7
        thevalue = 'VII'
      when 6
        thevalue = 'VI'
      when 5
        thevalue = 'V'
      when 4
        thevalue = 'IV'
      when 3
        thevalue = 'III'
      when 2
        thevalue = 'II'
      when 1
        thevalue = 'I'
    end
    thevalue
  end

end

module BookKeeping
  VERSION = 2
end

