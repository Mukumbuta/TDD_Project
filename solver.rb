class Solver
  def factorial(number)
    raise ArgumentError, 'Argument should be non-negative' if number.negative?
    return 1 if number.zero?

    (1..number).reduce(:*)
  end
end
