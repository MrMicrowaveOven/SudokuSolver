require_relative '../lib/square.rb'
describe 'square' do
  describe 'empty?' do
    it 'makes and empty square by default' do
      @square = Square.new
      expect(@square.empty?).to eq(true)
    end

    it "sets value to given value" do
      @square = Square.new(4)
      expect(@square.value).to eq(4)
    end

  end
  describe 'empty?' do
    it 'returns false if square is full' do
    end
  end
  describe 'value' do
    it "returns the value" do
      @square = Square.new(4)
      expect(@square.value).to eq(4)
    end
  end

end
