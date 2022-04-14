class Solver
  def factorial(number)
    raise ArgumentError if number.negative?
    return 1 if number.zero?

    number * factorial(number - 1)
  end

  def reverse(string)
    raise ArgumentError unless string.is_a? String

    string.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero? then 'fizzbuzz'
    elsif (number % 3).zero? then 'fizz'
    elsif (number % 5).zero? then 'buzz'
    else
      number.to_s
    end
  end
end
