class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize_word(word)
    if word.scan(/[aeiouAEIOU]/)
      #leave the vowel and add w-ay at the end
      word = word + "w"
    elsif       
      #remove the first letter, add it to the end and add ay
      word = word.slice(3..-1) + word.slice(0,3)
    elsif #2
    else
      word = word.slice(1..-1) + word.slice(0)      
    end
    word = word + "ay"
  end

  def piglatinize_sentence(sentence)
  end
end
