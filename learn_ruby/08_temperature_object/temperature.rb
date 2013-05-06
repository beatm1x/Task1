class Temperature
  def initialize(options = {})
    @fahrenheit = options[:f]
    @celcius = options[:c]
    @celcius = ((@fahrenheit - 32) / 1.8).round if @fahrenheit != nil
    @fahrenheit = (1.8 * @celcius + 32) if @celcius != nil
  end

  def in_fahrenheit
    @fahrenheit
  end

  def in_celsius
    @celcius
  end

  def self.from_celsius(celcius)
    self.new(:c => celcius)
  end

  def self.from_fahrenheit(fahrenheit)
    self.new(:f => fahrenheit)
  end
end

class Celsius < Temperature
  def initialize t
    super(:c => t)
  end
end

class Fahrenheit < Temperature
  def initialize t
    super(:f => t)
  end
end
