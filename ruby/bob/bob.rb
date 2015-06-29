class Bob

  def hey(text)
    if /[A-Z]{4}/ =~ text || /[A-Z][!]/ =~ text
      "Whoa, chill out!"
    elsif /[?]/ =~ text.slice(-1)
      "Sure."
    elsif /[\s\t\r]{2}/ =~ text || text.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
    
  end

end
