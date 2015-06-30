class Sieve
  attr_reader :range
  
  def initialize(number)
    @range = (2..number)
  end

  def primes
    @primes ||= calculate
  end

  def calculate
    numbers = range.to_a
    primes = []
    begin
      target = numbers.shift
      primes << target
      numbers.reject! { |i| i % target == 0 }
    end until numbers.empty?
    primes
  end
end