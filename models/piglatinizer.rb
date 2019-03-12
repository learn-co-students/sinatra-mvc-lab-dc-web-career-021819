class PigLatinizer

  def piglatinize(inp_string)
      #is this a word or a sentence? latinize_word : latinize_sentence
      inp_string.split(" ").length ==  1? latinize_word(inp_string) : latinize_sentence(inp_string)
  end

  def consonant?(char)
    !char.match(/[aAeEiIoOuU]/)
  end

  def latinize_word(word)
    if !consonant?(word[0])
      word = word + "w"
    elsif consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
      word = word.slice(3..-1) + word.slice(0,3)
    elsif consonant?(word[0]) && consonant?(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word << "ay"
  end

  def latinize_sentence(sentence)
    sentence.split.collect {|word| latinize_word(word)}.join(" ")
  end

end
