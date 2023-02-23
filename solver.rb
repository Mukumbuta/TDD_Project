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

def fizzbuzz(n)
  if (n % 3).zero? && (n % 5).zero?
    'fizzbuzz'
  elsif (n % 3).zero?
    'fizz'
  elsif (n % 5).zero?
    'buzz'
  else
    n.to_s
  end
end
