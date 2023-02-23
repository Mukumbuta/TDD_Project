require './solver'
RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(Solver.new.factorial(0)).to eq(1)
    end
    it 'returns 1 when given 1' do
      expect(Solver.new.factorial(1)).to eq(1)
    end
    it 'returns the correct factorial when given a positive integer' do
      expect(Solver.new.factorial(5)).to eq(120)
      expect(Solver.new.factorial(10)).to eq(3_628_800)
    end
    it 'raises ArgumentError when given a negative integer' do
      expect { Solver.new.factorial(-1) }.to raise_error(ArgumentError, 'Argument should be non-negative')
      expect { Solver.new.factorial(-20) }.to raise_error(ArgumentError, 'Argument should be non-negative')
    end
  end
  describe '#reverse' do
    it 'should throw an error with wrong number of arguments' do
      expect { Solver.new.reverse('hello', 'hi') }.to raise_error(ArgumentError, 'Argument should be one')
      expect { Solver.new.reverse('happy', 'live') }.to raise_error(ArgumentError, 'Argument should be one')
    end
    it 'should return olleh for hello' do
      expect(Solver.new.reverse('hello')).to eq('olleh')
      expect(Solver.new.reverse('hi')).to eq('ih')
      expect(Solver.new.reverse('live')).to eq('evil')
      expect(Solver.new.reverse('dad')).to eq('dad')
    end
  end
  describe '#fizzbuzz' do
    it 'returns "fizz" when given a number divisible by 3' do
      expect(Solver.new.fizzbuzz(3)).to eq('fizz')
      expect(Solver.new.fizzbuzz(9)).to eq('fizz')
      expect(Solver.new.fizzbuzz(12)).to eq('fizz')
    end
    it 'returns "buzz" when given a number divisible by 5' do
      expect(Solver.new.fizzbuzz(5)).to eq('buzz')
      expect(Solver.new.fizzbuzz(10)).to eq('buzz')
      expect(Solver.new.fizzbuzz(20)).to eq('buzz')
    end
    it 'returns "fizzbuzz" when given a number divisible by 3 and 5' do
      expect(Solver.new.fizzbuzz(15)).to eq('fizzbuzz')
      expect(Solver.new.fizzbuzz(30)).to eq('fizzbuzz')
      expect(Solver.new.fizzbuzz(45)).to eq('fizzbuzz')
    end
    it 'returns the number as a string when not divisible by 3 or 5' do
      expect(Solver.new.fizzbuzz(7)).to eq('7')
      expect(Solver.new.fizzbuzz(13)).to eq('13')
      expect(Solver.new.fizzbuzz(22)).to eq('22')
    end
  end
end
