# A group is a set of 9 squares on the board.
# Each group must contain squares whose values are 1-9.
# A group can be a row, column, or supersquare

class Group
  def initialize(array_of_squares)
    @squares = array_of_squares
  end

  def filled_values
    vals = []
    @squares.each do |square|
      vals << square.value if square.value
    end
    vals
  end

  def possible_values
    taken_numbers = filled_values
    (1..9).to_a.reject {|val| taken_numbers.include?(val)}
  end

  def empty_square
    empty_squares = @squares.select { |square| square.empty? }
    if empty_squares.length == 1
      return @squares.index(empty_squares.first)
    else
      return nil
    end
  end
end
