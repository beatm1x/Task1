class Array
  def sum
    inject(0){|sum, x| sum + x}
  end

  def square
    map{|n| n * n}
  end

  def square!
    replace(square)
  end
end