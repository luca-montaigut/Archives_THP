def add(number1, number2)
  return number1.to_i + number2.to_i
end

def subtract(number1, number2)
  return number1.to_i - number2.to_i
end

def sum(array)
  return array.sum
end

def multiply(number1, number2)
  return number1.to_f * number2.to_f
end

def power(number1, number2)
  return number1**number2
end

def factorial(number)
  fact = number.downto(1).inject(:*)
  return fact == nil ? 1 : fact
end