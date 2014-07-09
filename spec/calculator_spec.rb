# String Calculator

# 1. Create a simple String calculator with a method int Add(string numbers) - DONE
# The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example “” or “1” or “1,2” - DONE
# Start with the simplest test case of an empty string and move to 1 and two numbers - DONE
# Remember to solve things as simply as possible so that you force yourself to write tests you did not think about - THINK I DID
# Remember to refactor after each passing test - HALF DONE, DIFFICULT AT BEGINNING WHEN LITTLE CODE TO REFACTOR,
# POSSIBLY WAITED TOO LONG TO REFACTOR THE @calculator into before block

# 2. Allow the Add method to handle an unknown amount of numbers - DONE

# 3. Allow the Add method to handle new lines between numbers (instead of commas).
# the following input is ok:  “1\n2,3”  (will equal 6)
# the following input is NOT ok:  “1,\n” (not need to prove it - just clarifying)

require 'calculator'

describe Calculator do

  before(:all) { @calculator = Calculator.new }

  it "should instantiate a new Calculator instance" do
    expect(@calculator).to be_a_kind_of(Calculator)
  end

  it "should return an integer when adding a string" do
    expect(@calculator.add('qwerty')).to eq(0)
  end

  it "should accept 0 numbers as a string and return 0" do
    expect(@calculator.add('')).to eq(0)
  end

  it "should accept 1 number as a string and return the number" do
    expect(@calculator.add('5')).to eq(5)
  end

  it "should accept 2 numbers as a comma separated string and return their sum" do
    expect(@calculator.add('1,2')).to eq(3)
  end

  # This just worked due to the refactoring of the code to drive the above test - maybe should have not used split so soon?
  it "should accept multiple numbers as a comma separated string and reutrn their sum" do
    expect(@calculator.add('1,2,3,4,5,6,7,8,9,10,11')).to eq(66) # Can I stack up tests like this if different examples for same test?
  end

  it "should accept newlines between numbers in the string" do
    expect(@calculator.add('1\n2\n3')).to eq(6)
  end
end
