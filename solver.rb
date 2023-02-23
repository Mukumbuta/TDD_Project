class Solver
  def factorial(number)
    raise ArgumentError, 'Argument should be non-negative' if number.negative?
    return 1 if number.zero?

    (1..number).reduce(:*)
  end

  def reverse(str)
    str.reverse
  end
end

public

def fizzbuzz(number)
  if (number % 3).zero? && (number % 5).zero?
    'fizzbuzz'
  elsif (number % 3).zero?
    'fizz'
  elsif (number % 5).zero?
    'buzz'
  else
    number.to_s
  end
end
