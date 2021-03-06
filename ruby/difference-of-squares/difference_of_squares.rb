class Squares
  attr_reader :number

  def initialize(number)
    @number=number
  end

  def square_of_sums
    (1..number).reduce { |sum, i| sum += i } ** 2
  end

  def sum_of_squares
    (1..number).reduce { |sum, i| sum += i**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end

