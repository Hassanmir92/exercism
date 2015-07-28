class Meetup

  attr_reader :year, :month
  def initialize(month, year)
    @year = year
    @month = month
    @first = Date.new(year, month, 1)
    @eighth = Date.new(year, month, 8)
    @thirteenth = Date.new(year, month, 13)
    @fifteenth = Date.new(year, month, 15)
    @twenty_second = Date.new(year, month, 22)
    @last = Date.new(year, month, -1)
  end

  def day(weekday, schedule)
   case schedule
   when :teenth then
     @thirteenth + remainder(weekday)
   when :first then
     @first
   when :second then
     @eighth
   when :third then
     @fifteenth
   when :fourth then
     @twenty_second
   when :last then
     @last
   end  
 end

 def remainder(weekday)
  if weekday == :monday
    (10 % month) * 3
  elsif weekday == :tuesday
    (10 % month) * 6
  end
 end

end