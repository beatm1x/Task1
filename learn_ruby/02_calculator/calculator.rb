def add(x,y)
  x+y
end
def subtract(x,y)
  x-y
end
def sum(mas)
  sum=0
  mas.each do |x|
    sum+=x
  end
  sum
end
def multiply(*mas)
  m=1
  mas.each do |x|
    m*=x
  end
  m
end
def power(x,y)
  x**y
end
def factorial(n)
  n > 1 ? n * factorial(n - 1) : 1
end