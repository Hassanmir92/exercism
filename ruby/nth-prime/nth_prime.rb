class Prime
  
  def self.nth(n)
    raise ArgumentError if n < 1
      
    primes = 0
    i = 1
    while primes < n
      i += 1
      primes += 1 if self.prime?(i)
    end
    i
  end

  def self.prime?(n)
    return false if n == 1
    return true if n == 2
    (2..Math.sqrt(n).ceil).each do |i|
      return false if n % i == 0
    end
    return true
  end

end
