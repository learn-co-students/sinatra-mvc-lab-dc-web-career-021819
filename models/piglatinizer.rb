class PigLatinizer
  attr_reader :text

  # Pig Latin is a made-up language formed from English by
  # transferring the initial consonant or consonant cluster of
  # each word to the end of the word and adding a vocalic syllable.
  #  For example, noodle soup would be translated to oodlenay oupsay.

  def initialize(text = "")
    @text = text
  end

  def piglatinize(text = @text)
    words = text.split(" ")
    new_words = words.collect do | word |
      return_string = ""
      if word.downcase.index(/[aeoui]/) == 0
        return_string += "#{word}way"
      else
        split_word_array = word.partition(/[aeoui]/)
        split_word_array << split_word_array.shift
        return_string = split_word_array.join
        return_string += "ay"
      end
      return_string
    end
    new_words.join(" ")
  end

end
