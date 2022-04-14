class Solver
  def factorial(number)
    raise ArgumentError if number < 0
    return 1 if number == 0

    number * factorial(number - 1)
  end
end