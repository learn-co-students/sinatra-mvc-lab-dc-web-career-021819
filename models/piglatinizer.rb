class PigLatinizer
  def piglatinize(user_input)
    return_string = ""
    words = user_input.split(" ")
    if words.length > 1
      words.each do |word|
        return_string += translate_word(word) + " "
      end
    else
      return_string = translate_word(words[0])
    end
    return_string.strip
  end

    def translate_word(word)
      word[0].downcase.match(/[aeiou]/) ? tag = "way" : tag = "ay"
      if word.downcase.match(/^[aeiou][^aeiou]/)
        return word + tag
      end
      word_start = word.match(/^[^aeiou\s]+/).to_s
      word_end = word[word_start.length..word.length]

      return word_end + word_start + tag

    end

end
