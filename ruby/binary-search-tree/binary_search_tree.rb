class Bst
  attr_reader :data, :left, :right
  def initialize(data)
    @data = data
  end

  def insert(value)
    value <= data ? insert_left(value) : insert_right(value)
  end

  def each(&block)
    left && left.each(&block)
    block.call(data)
    right && right.each(&block)
  end

  def insert_left(value)
    left ? left.insert(value) : @left = Bst.new(value)
  end

  def insert_right(value)
    right ? right.insert(value) : @right = Bst.new(value)
  end
end