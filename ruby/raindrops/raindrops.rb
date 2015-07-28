class Raindrops

  def initialize
  end

  def self.convert(number)
    output = new.divisible(number)

    if output == ""
      "#{number}" 
    else
      output
    end
  end

  def divisible(number)
    string = ""
    string += "Pling" if number % 3 == 0
    string += "Plang" if number % 5 == 0
    string += "Plong" if number % 7 == 0
    string
  end

end





