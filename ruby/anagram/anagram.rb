class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(array)
    j = word.downcase
    a = []
    array.each do |i|
      a.push(i) if j.chars.sort == i.downcase.chars.sort && i.downcase != j
    end
    a
  end

end