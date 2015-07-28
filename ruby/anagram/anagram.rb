class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(array)
    array.select do |i|
      word.chars.sort == i.downcase.chars.sort && i.downcase != word
    end
  end

end