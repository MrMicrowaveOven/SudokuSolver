class Board
  attr_reader :board
  def initialize(board = Array.new(9) {Array.new(9) {[]}})
    @board = board
  end

  def empty?
    board.each do |row|
      row.each do |square|
        return false if !square.empty?
      end
    end
    true
  end

  def filled?
    board.each do |row|
      board.each do |square|
        return false if square.empty?
      end
    end
    true
  end

end
