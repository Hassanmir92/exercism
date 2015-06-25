class Robot
  def name
    @name ||= "#{two_letters}#{three_numbers}"
  end

  def two_letters
    ('A'..'Z').to_a.sample(2).join('')
  end

  def three_numbers
    (0..9).to_a.sample(3).join('')
  end

  def reset
    @name = nil
  end
end