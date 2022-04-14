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
end
