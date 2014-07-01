# String Calculator

# Create a simple String calculator with a method int Add(string numbers)
# The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example “” or “1” or “1,2”


#require 'calculator'

class Calculator

  def initialize

  end

  def Add arg0=0, arg1=0

    sum = arg0.to_i() + arg1.to_i()

  end

  def to_s
    true
  end

end

describe Calculator do

  it "should instantiate and return true on string" do
    # @calculator =
    expect(Calculator.new().to_s).to eq(true)
  end

  it "should return an integer when Adding a string" do
    @calculator = Calculator.new
    expect(@calculator.Add("qwerty")).to eq(0)
  end

  it "should accept 0 numbers and return 0" do
    @calculator = Calculator.new
    expect(@calculator.Add()).to eq(0)
  end

  it "should accept 1 number and return the number" do
    @calculator = Calculator.new
    expect(@calculator.Add(5)).to eq(5)
  end

  it "should accept 2 numbers and return their sum" do
    @calculator = Calculator.new
    expect(@calculator.Add(1,2)).to eq(3)
  end

end