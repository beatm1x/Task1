class Array
  def sum
    s=0
    self.each do |el|
      s+=el
    end
    s
  end
  def square
    map{|n| n*n}
  end
  def square!
    map!{|n| n*n}
  end
end