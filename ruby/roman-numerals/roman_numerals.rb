class Fixnum

  ARABIC_TO_ROMAN = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }


  def to_roman
    arabic_numeral = self
    roman_numeral = ""

    ARABIC_TO_ROMAN.each do |arabic_value, roman_value|
      while arabic_numeral >= arabic_value
        roman_numeral << roman_value
        arabic_numeral -= arabic_value
      end
    end

    roman_numeral
  end

end