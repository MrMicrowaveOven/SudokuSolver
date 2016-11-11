require_relative "../lib/group.rb"
require_relative "../lib/square.rb"

describe "group" do
  before :each do

    array_of_squares = Array.new(9) {Square.new}
    (1..9).to_a.each do |num|
      array_of_squares[num - 1].fill(num)
    end
    @full_group = Group.new(array_of_squares)

    array_of_squares = Array.new(9) {Square.new}
    (1..8).to_a.each do |num|
      array_of_squares[num].fill(num)
    end
    @group_with_8_values = Group.new(array_of_squares)


    array_of_squares = Array.new(9) {Square.new}
    (2..7).to_a.each do |num|
      array_of_squares[num].fill(num)
    end
    @group_with_6_values = Group.new(array_of_squares)
  end

  describe "filled_values" do

    it "returns full array with full group" do
      expect(@full_group)
    end
    it "displays all taken values" do
      expect(@group_with_8_values.filled_values).to eq([1,2,3,4,5,6,7,8])
    end
  end

  describe "possible_values" do
    it "returns empty array if the group is filled" do
      expect(@full_group.possible_values).to eq([])
    end
    it "returns a single value if the group is filled with 8 numbers" do
      expect(@group_with_8_values.possible_values).to eq([9])
    end

    it "returns an array of possible values (6 numbers filled)" do
      expect(@group_with_6_values.possible_values).to eq([1,8,9])
    end
  end

  describe "empty_square" do
    it "if only one empty square, returns its index" do
      expect(@group_with_8_values.empty_square).to eq(0)
    end
    it "returns nil if more than one empty square" do
      expect(@group_with_6_values.empty_square).to eq(nil)
    end
  end
end
