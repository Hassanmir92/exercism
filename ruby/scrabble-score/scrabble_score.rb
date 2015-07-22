class Scrabble

  def self.score(word)
    new(word).score
  end
  
  attr_reader :word

  SCORES = {
    'a' => 1, 'b' => 3, 'c' => 3, 'd' => 2, 'e' => 1,
    'f' => 4, 'g' => 2, 'h' => 4, 'i' => 1, 'j' => 8,
    'k' => 5, 'l' => 1, 'm' => 3, 'n' => 1, 'o' => 1,
    'p' => 3, 'q' => 10, 'r' => 1, 's' => 1, 't' => 1,
    'u' => 1, 'v' => 4, 'w' => 4, 'x' => 8, 'y' => 4,
    'z' => 10
  }

  def initialize(word)
    if word == " \t\n"
      @word = nil
    else
      @word = word
    end
  end

  def score
    overall_score = 0
    if word != nil 
      word.chars.each do |char|
        overall_score += SCORES[char]
      end
      overall_score
    else
      0
    end
  end

end

