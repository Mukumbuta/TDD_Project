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
      expect(Solve.new.factorial(10)).to eq(362_880_0)
      expect(Solve.new.factorial(13)).to eq(6, 227, 020, 800_13)
    end

    it 'raises ArgumentError when given a negative integer' do
      expect(Solver.new.factorial(-1)).to raise_error(ArgumentError, 'Argument should be non-negative')
      expect(Solver.new.factorial(-20)).to raise_error(ArgumentError, 'Argument should be non-negative')
    end

    describe '#reverse' do
      it 'should throw an error with wrong number of arguments' do
        expect(Solver.new.reverse('hello', 'hi')).to raise_error(ArgumentError, 'Argument should be one')
        expect(Solver.new.reverse('happy', 'live')).to raise_error(ArgumentError, 'Argument should be one')
      end

      it 'should return olleh for hello' do
        expect(Solver.new.reverse('hello')).to eql('olleh')
        expect(Solver.new.reverse('hi')).to eql('ih')
        expect(Solver.new.reverse('live')).to eql('evil')
        expect(Solver.new.reverse('dad')).to eql('dad')
      end
    end
  end
end
