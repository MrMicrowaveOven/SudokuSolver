class Square
  attr_reader :value, :row, :column, :supersquare
  def initialize(value = nil, row = nil, column = nil, supersquare = nil)
    @value = value
    @row = row
    @column = column
  end

  def set_supersquare(supersquare)
    @supersquare = supersquare
  end

  def potentials
    taken_numbers = @row.filled_values + @column.filled_values + @supersquare.filled_values
    taken_numbers = taken_numbers.uniq
    (1..9).to_a.reject {|num| taken_numbers.include?(num)}
  end

  def empty?
    !value
  end

  def fill(value)
    @value = value
  end
end
