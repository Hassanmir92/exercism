class Trinary
  attr_reader :number

  def initialize(decimal)
    @number = decimal.reverse.chars.collect(&:to_i)
  end

  def to_decimal
    decimal = 0
    number.each_with_index do |n, index|
      decimal += n * 3**index
    end
    decimal
  end
end