class Queens
  attr_reader :white, :black

  def initialize(positions = {})
    @white = positions.fetch(:white) { [0, 3] }
    @black = positions.fetch(:black) { [7, 3] }
    raise ArgumentError if white == black
  end

  def to_s
    board = []
    (0..7).each do |row|
      positions = []
      (0..7).each do |column|
        positions << draw(row, column)
      end
      board[row] = positions.join(' ')
    end
    board.join("\n")
  end

  def attack?
    white[0] == black[0] || white[1] == black[1] || (black[1] - black[0]).abs == (white[1] - white[0]).abs
  end

  private

    def draw(row, column)
      case [row, column]
      when white then 'W'
      when black then 'B'
      else
        '_'
      end
    end

end
