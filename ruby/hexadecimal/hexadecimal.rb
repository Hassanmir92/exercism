class Hexadecimal
  HEX = {
    "0" => 0,
    "1" => 1,
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "a" => 10,
    "b" => 11,
    "c" => 12,
    "d" => 13,
    "e" => 14,
    "f" => 15
  }
  attr_reader :hexadecimal

  def initialize(hexadecimal)
    @hexadecimal = hexadecimal.downcase.chars.reverse
  end

  def to_decimal
    if valid?
      toDec
    else
      0
    end
  end

  def toDec
    decimal = 0
    hexadecimal.each_with_index do |d, index|
      decimal += HEX[d] * 16**index
    end
    decimal
  end

  def valid?
    !hexadecimal.join('')[/[^0-9a-f]/]
  end

end
