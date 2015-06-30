class SumOfMultiples
  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def self.to(number)
    new(3,5).to(number)
  end

  def to(number)
    numbers = []
    (0...number).each do |i|
      numbers << i if multiple?(i)
    end
    numbers.inject(:+)
  end

  def multiple?(i)
    multiples.any? do |multiple|
      i % multiple == 0
    end
  end
  
end