class Board
  attr_reader :board
  def initialize(board = Array.new(9) {Array.new(9) {Square.new}})
    @board = board
  end

  def build_board
  end

  def each_square(&prc)
    @board.each do |row|
      row.each do |square|
        prc.call(square)
      end
    end
  end

  def empty?
    # [[0],[1],[2],[3],[]]
    # 10.times.map {|n| [n] }
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
