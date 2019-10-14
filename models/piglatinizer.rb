class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def vowel(char)
    char.match(/[aeiouAEIOU]/)
  end

  def piglatinize_word(word)
    if vowel(word[0])
      #leave the vowel and add w-ay at the end
      word = word + "w"
    #elsif 
      #remove the first letter, add it to the end and add ay
      #word = word.slice(3..-1) + word.slice(0,3)
    elsif vowel(word[0]) && vowel(word[1])
      word = word.slice(2..-1) + word.slice(0,2)
    else
      word = word.slice(1..-1) + word.slice(0)
    end
    word = word + "ay"
  end

  def piglatinize_sentence(sentence)
  end
end
