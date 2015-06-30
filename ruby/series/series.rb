class Series
  attr_reader :number

  def initialize(number)
    @number = number.chars.to_a.map(&:to_i)
  end

  def slices(slice)
    raise ArgumentError if slice > number.length
    new_array = []
    i = -1
    begin
      i += 1
      i2 = i + slice - 1
      new_array << number[i..i2]
    end while i2 < number.size - 1
    new_array
  end
end