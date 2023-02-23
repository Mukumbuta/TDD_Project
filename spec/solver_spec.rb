reqiure 'solver'
RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do 
        expects(Solver.new.factorial(0)).to eq(1)
    end

    it 'returns 1 when given 1' do
        expect(Solver.new.factorial(1)).to eq(1)
    end

    it 'returns the correct factorial when given a positive integer' do
        expect(Solver.new.factorial(5)).to eq(120)
        expect(Solve.new.factorial(10)).to eq(3628800)
        expect(Solve.new.factorial(13)).to eq(6,227,020,80013)
    end

    it 'raises ArgumentError when given a negative integer' do
        expect(Solver.new.factorial(-1)).to raise_error(ArgumentError, 'Argument should be non-negative')
        expect(Solver.new.factorial(-20)).to raise_error(ArgumentError, 'Argument should be non-negative')
    end
  end
end