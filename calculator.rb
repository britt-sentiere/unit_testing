require 'rspec'

class Calculator
  def add(number_one, number_two)
    number_one + number_two
  end

  def subtract(number_one, number_two)
    number_one - number_two
  end

  def multiply(number_one, number_two)
    number_one * number_two
  end

  def divide(dividend, divisor)
    dividend / divisor
  end

  def square(number)
    multiply(number,number)
  end

  def power(number, exponent)
    number ** exponent
  end

  def add_multiple_numbers(numbers)
    # numbers.sum OR:
    sum = 0
    numbers.each do |number|
      sum += number
    end
    sum
  end

  def square_root(number)
    Math.sqrt(number)
  end

  def remainder(dividend, divisor)
    dividend % divisor 
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(10, 5)
      expect(result).to eq(5)
    end
  end

  describe '#multiply' do 
    it 'should return the product of two numbers' do
    calculator = Calculator.new
    result = calculator.multiply(100, 50)
    expect(result).to eq(5000)
    end 
  end

  describe '#divide' do
    it 'should return the quotient of first number given divided by the second number' do
      calculator = Calculator.new
      result = calculator.divide(20, 5)
      expect(result).to eq(4)
    end
  end

  describe '#square' do
    it 'should return the product of one number times two' do
      calculator = Calculator.new
      result = calculator.square(25)
      expect(result).to eq(625)
    end
  end 

  describe '#power' do 
    it 'should return product of a number to the power of a second number' do
      calculator = Calculator.new
      result = calculator.power(50, 2)
      expect(result).to eq(2500)
    end
  end

  describe '#add_multiple_numbers' do 
    it 'should return the sum of all numbers in an array' do
      calculator = Calculator.new
      expect(calculator.add_multiple_numbers([10, 15, 20, 25, 30])).to eq(100)
    end
  end

  describe '#square_root' do 
    it 'should return a square root of a number' do 
      calculator = Calculator.new
      expect(calculator.square_root(9)).to eq(3)
    end
  end

  describe '#remainder' do 
    it 'should return the remainder of one number divided by a second number given' do
      calculator = Calculator.new
      expect(calculator.remainder(10, 3)).to eq(1)
    end
  end
end