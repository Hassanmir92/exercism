class BeerSong

  def verse(number)
    case number
    when 1
      i = "no more bottles"
      j = "#{number} bottle"
      k = "Take it down and pass it around"
    when 2
      i = "#{number - 1} bottle"
      j = "#{number} bottles"
      k = "Take one down and pass it around" 
    when 0
      i = "99 bottles"
      j = "No more bottles"
      k = "Go to the store and buy some more"
    else
      i = "#{number - 1} bottles"
      j = "#{number} bottles"
      k = "Take one down and pass it around" 
    end 

    "#{j} of beer on the wall, #{j.downcase} of beer.\n" \
    "#{k}, #{i} of beer on the wall.\n"
  end

  def verses(x, y)
    (y..x).to_a.reverse.map { |n| verse(n) }.join("\n") + "\n"
  end

  def sing
    verses(99, 0)
  end


end