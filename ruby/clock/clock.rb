class Clock
  attr_reader :time

  def initialize(hour, minutes)
    @time = Time.utc(2015, 01, 01, hour, minutes)
  end

  def self.at(hour, minutes = 0)
    new(hour, minutes)
  end

  def self.from(time)
    new(time.hour, time.min)
  end

  def +(minutes)
    self.class.from(time + (minutes * 60))
  end

  def -(minutes)
    self.class.from(time - (minutes * 60))
  end

  def ==(other)
    to_s == other.to_s
  end

  def to_s
    time.strftime('%H:%M')
  end
end