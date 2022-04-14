class Solver
  def factorial(number)
    raise ArgumentError if number < 0
    return 1 if number == 0

    number * factorial(number - 1)
  end

  def reverse(string)
    if string.is_a? String
      string.reverse
    else
      raise ArgumentError
    end
  end

  def fizzbuzz(number)
    if (number % 3 == 0) && (number % 5 == 0) then 'fizzbuzz'
    elsif number % 3 == 0 then 'fizz'
    elsif number % 5 == 0 then 'buzz'
    else
      number.to_s
    end
  end
end
