require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def make_negative(number)
    return number * -1
  end

  def find_hypotenuse(side_1, side_2)
    Math.sqrt(side_1 * side_1 + side_2 * side_2)
  end

  def code_name(string)
    name_reversed = string.reverse
    coded_name = ""
    name_reversed.split("").each do |letter|
      if letter == "j"
        coded_name += "7"
      elsif letter == "o"
        coded_name += "0"
      elsif letter == "s"
        coded_name += "5"
      elsif letter == "h"
        coded_name += "4"  

      end

    end
  end

end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of the two numbers' do
      calculator = Calculator.new
      expect(calculator.add(1,3)).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of the two numbers' do
      calculator = Calculator.new
      expect(calculator.subtract(5,2)).to eq(3)
    end
  end


  describe '#multiply' do
    it 'should return the product of the two numbers' do
      calculator = Calculator.new
      expect(calculator.multiply(3,3)).to eq(9)
    end
  end

  describe '#divide' do
    it 'should return the quotient of the two numbers' do
      calculator = Calculator.new
      expect(calculator.divide(20,4)).to eq(5)
    end
  end

  describe '#square' do
    it 'should return the product of the number times itself' do
      calculator = Calculator.new
      expect(calculator.square(4)).to eq(16)
    end
  end

  describe '#power' do
    it 'should return the product of the first number times by itself the second number of times' do
      calculator = Calculator.new
      expect(calculator.power(2,5)).to eq(32)
    end
  end

  describe '#make_negative' do
    it 'should return a string of the number as a negative' do
      calculator = Calculator.new
      expect(calculator.make_negative(8)).to eq(-8)
    end
  end

  describe '#find_hypotenuse' do
    it 'should find the find the hypotenuse given the length of the smaller sides' do
      calculator = Calculator.new
      expect(calculator.find_hypotenuse(3,4)).to eq(5)
    end
  end

  describe '#code_name' do
    it 'should' do
      calculator = Calculator.new
      expect(calculator.code_name(4507)).to eq("Josh")
    end
  end























end

