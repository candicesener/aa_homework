require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:chocolate) { Dessert.new("chocolate", 23, chef)}
  describe "#initialize" do
    it "sets a type"
      expect(chocolate.type).to eq("chocolate")
    it "sets a quantity"
      expect(chocolate.quantity).to eq(23)
    it "starts ingredients as an empty array"
      expect(chocolate.ingredients).to be_empty
    it "raises an argument error when given a non-integer quantity"
      expect { Dessert.new("dessert", "little", chef) }.to raise_error(ArgumentError)
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      chocolate.add_ingredient("milk")
      expect(chocolate.ingredients).to include("milk")
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      chocolate.eat(3)
      expect(chocolate.quantity).to eq(20)
    it "raises an error if the amount is greater than the quantity"
      expect { chocolate.eat(32)}.to raise_error("Error")
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
