class PigLatinizer
  attr_reader :text

  def single_piglatinze(text)
    if text.index(text.scan(/[aeouiAEOUI]/).first) == 0
      text << "way"
    else
      text[text.index(text.scan(/[aeoui]/).first)..-1] << text[0...text.index(text.scan(/[aeoui]/).first)] << "ay"
    end
  end

  def piglatinize(text)
    if text.split(" ").size > 1
      text.split(" ").collect do |x|
        single_piglatinze(x)
      end.join(" ")
    else
      single_piglatinze(text)
    end
  end
end
