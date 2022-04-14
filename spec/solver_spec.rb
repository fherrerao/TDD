require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context '#factorial' do
    it 'return factorial of a number' do
      @solver.factorial(5).should == 120
    end

    it 'return 1 to factorial of 0' do
      @solver.factorial(0).should == 1
    end

    it 'raise exception if number is negative' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  context '#reverse' do
    it 'check if is a string' do
      expect { @solver.reverse(123) }.to raise_error(ArgumentError)
    end

    it 'hello should return olleh' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end

  context '#fizzbuzz' do
    it 'return fizzbuzz if number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'return fizz if number is divisible by 3' do
      expect(@solver.fizzbuzz(3)).to eq('fizz')
    end

    it 'return buzz if number is divisible by 5' do
      expect(@solver.fizzbuzz(5)).to eq('buzz')
    end

    it 'return number if number is not divisible by 3 or 5' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
