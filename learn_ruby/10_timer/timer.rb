require "time"
class Timer
  def initialize
    @time_convert=Time.new(0)
  end
  def seconds=(value)
    @time_convert=Time.at(value).utc.strftime("%H:%M:%S")
  end
  def seconds
    @time_convert.sec
  end
  def time_string
    @time_convert
  end
end