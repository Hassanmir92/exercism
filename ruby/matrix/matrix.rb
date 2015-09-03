class Matrix
  attr_reader :row

  def initialize(row)
    @row = row.to_i.chars.map { |n| n } - [0]
  end

  def rows
    [row[0..1], row[2..-1]]
  end
end