require_relative '../lib/board.rb'

describe 'board' do
  describe '#initialize' do
    it 'makes an empty board by default' do
      @board = Board.new
      expect(@board.empty?).to eq(true)
    end

    it 'sets @board to a taken board' do
      @board = Board.new(Array.new(9) {Array.new(9) {Array.new(1)}})
      expect(@board.empty?).to eq(false)
      expect(@board.filled?).to eq(true)
    end
  end

  describe "each_square" do
    it "applies block to each square" do
      @board = Board.new
      expect(@board.empty?).to eq(true)
      @board.each_square {|square| square.fill(1)}
      expect(@board.filled?).to eq(true)
    end
  end
end
