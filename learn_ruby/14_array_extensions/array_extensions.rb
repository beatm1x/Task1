class Array
  def sum
    self.inject(0){|sum, x| sum + x}
  end

  def square
    map{|n| n * n}
  end

  def square!
    self.replace(self.square)
  end
end