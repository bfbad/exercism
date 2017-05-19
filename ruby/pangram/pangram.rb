class Pangram
  def self.pangram?(phrase)

    #clean the string by removing any non alpha characters and then downcasing whats left.
    phrase.gsub(/[^a-z]/i, '')
    phrase.downcase!
    # convert to array
    phrase_array = phrase.chars
    # make sure each letter is in the array. If one is missing, immediately return false
    ("a".."z").each do |x|
      unless phrase_array.include? x
        return false
      end
    end
    # if it makes it to the end of the alphabet, return true
    true
  end
end

module BookKeeping
  VERSION = 4
end