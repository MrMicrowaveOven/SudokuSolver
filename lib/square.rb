class Square
  attr_reader :value, :row, :column, :supersquare
  def initialize(value = nil)
    @value = value
  end
  def empty?
    !value
  end

  def fill(value)
    @value = value
  end
end
