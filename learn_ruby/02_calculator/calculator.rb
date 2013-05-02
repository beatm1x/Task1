def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(mas)
  mas.inject(0){|sum, x| sum + x}
end

def multiply(*mas)
  mas.inject(1){|m, x| m * x}
end

def power(x, y)
  x**y
end

def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end