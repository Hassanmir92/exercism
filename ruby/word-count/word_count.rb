class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    data = Hash.new(0)
    each_word do |word|
      data[word] += 1
    end
    data
  end

  def each_word
    phrase.downcase.scan(/[\w']+/) do |word|
      yield word
    end
  end


end