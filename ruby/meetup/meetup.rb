class Meetup

  attr_reader :year, :month
  
  def initialize(month, year)
    @year = year
    @month = month
  end

  def day(weekday, schedule)
    Date.new(year, month, 13)
  end

end