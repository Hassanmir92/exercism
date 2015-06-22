class Hamming
  VERSION = 1

  def self.compute(a, b)
    if a.length == b.length
      (0...a.length).count do |i|
        a[i] != b[i]
      end
    else
      raise ArgumentError
    end
  end

end