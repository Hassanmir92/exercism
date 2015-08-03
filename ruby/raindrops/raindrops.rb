class Raindrops

  def self.convert(number)
    output = self.divisible(number)
    output.empty? ? number.to_s : output
  end

  def self.divisible(number)
    string = ""
    string += "Pling" if number % 3 == 0
    string += "Plang" if number % 5 == 0
    string += "Plong" if number % 7 == 0
    string
  end

end





