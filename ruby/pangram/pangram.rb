class Pangram
  def self.pangram?(phrase)

    #clean the string by removing any non alpha characters and then downcasing whats left.
    phrase.gsub(/[^a-z]/i, '')
    phrase.downcase!
    # convert to array
    phrase_array = phrase.chars
    # make sure each letter is in the array.
    ("a".."z").all? { |letter| phrase_array.include?(letter)}
  end
end

module BookKeeping
  VERSION = 4
end