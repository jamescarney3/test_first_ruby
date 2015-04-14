def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(nums)
  total = 0
  nums.each {|num| total += num}
  total
end

def multiply(nums)
  total = 1
  nums.each {|num| total *= num}
  total
end

def power(a, b)
  a**b
end

def factorial(a)
  if a == 0 or a == 1
    1
  else
    a * factorial(a-1)
  end
end