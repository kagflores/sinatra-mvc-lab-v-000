class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize_word(word)
    if word.scan(/[aeiouAEIOU]/)
      #leave the vowel and add way at the end
      word = word + "w"

    else
      #remove the first letter, add it to the end and add ay
    end
  end

  def piglatinize_sentence(sentence)
  end
end
