class Binary
  VERSION = 1
  attr_reader :number

  def initialize(number)
    raise ArgumentError if !(number.chars.all? { |char| ['0', '1'].include?(char) })
    @number = number
  end

  def to_decimal
    number.to_i(2)
  end

end