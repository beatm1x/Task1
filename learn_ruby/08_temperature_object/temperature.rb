class Temperature
  def initialize(options = {})
    @f= options[:f]
    @c= options[:c]
    if @f!=nil
      @c=((@f - 32)/1.8).round
    end
    if @c!=nil
      @f=(1.8*@c + 32)
    end
  end
  def in_fahrenheit
    @f
  end
  def in_celsius
    @c
  end
  def self.from_celsius(c)
    self.new(:c=>c)
  end
  def self.from_fahrenheit(f)
    self.new(:f=>f)
  end

end
class Celsius < Temperature
  def initialize t
    super(:c=>t)
  end
end
class Fahrenheit < Temperature
  def initialize t
    super(:f=>t)
  end
end
