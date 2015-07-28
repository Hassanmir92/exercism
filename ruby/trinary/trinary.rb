class Trinary
  attr_reader :trinary

  def initialize(trinary)
    @trinary = trinary.reverse.chars.map(&:to_i)
  end

  def to_decimal
    trinary.map.with_index.reduce(0) do |sum, (n, index)|
      sum += n * 3**index
    end
  end
end