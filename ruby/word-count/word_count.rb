class Phrase
  def initialize(phrase)
    @word_array = phrase.downcase.split(/[^\w']+/)
    @word_array.map! { |word|
      if word[0] == '\''
        word = word[1..word.length]
      else
        word = word
      end
      if word[-1] == '\''
        word = word[0..word.length-2]
      else 
        word = word
      end

    }
  end

  def word_count
    word_hash = { }
    @word_array.each do |key|
      if word_hash.has_key? key
        word_hash[key] = word_hash[key] + 1 
      else 
        word_hash[key] = 1
      end
    end
    word_hash
  end
end

module BookKeeping
  VERSION = 1
end
