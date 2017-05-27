def add(x, y)
  x + y
end            # => :add

def subtract(x, y)
  x - y
end                 # => :subtract

def sum(numbers)
  total = 0
  numbers.each do |number|
    total += number
  end
  total
end                         # => :sum

def multiply(numbers)
  total = nil
  numbers.each do |number|
    if total == nil
      total = number
    else
      total *= number
  end
end
  total
end                         # => :multiply

def factorial(number)
  if number == 0 || number == 1  # => false
    arr = [1, 1]
  else
  arr = (1..number).to_a         # => [1, 2, 3, 4, 5]
  arr.reverse!                   # => [5, 4, 3, 2, 1]
  end                            # => [5, 4, 3, 2, 1]
  factor = nil                   # => nil
  arr.each do |n|                # => [5, 4, 3, 2, 1]
    if factor == nil             # => true, false, false, false, false
      factor = n                 # => 5
    else
      factor *= n                # => 20, 60, 120, 120
    end                          # => 5, 20, 60, 120, 120
  end                            # => [5, 4, 3, 2, 1]
    return factor                # => 120
end                              # => :factorial

factorial(5)  # => 120
