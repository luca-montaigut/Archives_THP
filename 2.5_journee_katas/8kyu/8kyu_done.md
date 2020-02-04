#Multiply
def multiply(a, b)
  a * b
end

#Sum of positive
def positive_sum(arr)
  arr.reject{|x| x <= 0 }.sum
end

#Century From Year
def century(year)
  (year - 1) / 100 + 1
end
