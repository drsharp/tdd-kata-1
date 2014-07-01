# String Calculator

# 1. Create a simple String calculator with a method int Add(string numbers) - DONE
# The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example “” or “1” or “1,2” - DONE
# Start with the simplest test case of an empty string and move to 1 and two numbers - DONE
# Remember to solve things as simply as possible so that you force yourself to write tests you did not think about - THINK I DID
# Remember to refactor after each passing test - HALF DONE, DIFFICULT AT BEGINNING WHEN LITTLE CODE TO REFACTOR,
# POSSIBLY WAITED TOO LONG TO REFACTOR THE @calculator into before block

# 2. Allow the Add method to handle an unknown amount of numbers

require 'calculator'

describe Calculator do

  before do
    @calculator = Calculator.new
  end

  it "should instantiate and return true on string" do
    expect(Calculator.new().to_s).to eq(true)
  end

  it "should return an integer when adding a string" do
    expect(@calculator.Add("qwerty")).to eq(0)
  end

  it "should accept 0 numbers and return 0" do
    expect(@calculator.Add()).to eq(0)
  end

  it "should accept 1 number and return the number" do
    expect(@calculator.Add(5)).to eq(5)
  end

  it "should accept 2 numbers and return their sum" do
    expect(@calculator.Add(1,2)).to eq(3)
  end

end