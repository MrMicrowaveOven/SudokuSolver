require_relative "../lib/group.rb"
require_relative "../lib/square.rb"

describe "group" do
  before :each do
    array_of_squares = Array.new(9) {Square.new}
    (1..8).to_a.each do |num|
      array_of_squares[num].fill(num)
    end
    @group = Group.new(array_of_squares)
  end

  describe "values" do
    it "displays all taken values" do
      expect(@group.values).to eq([1,2,3,4,5,6,7,8])
    end
  end

  describe "possible_values" do
    it "returns a single value if the group is filled with 8 numbers" do
      expect(@group.possible_values).to eq([9])
    end
  end
end
