def reverser
  yield.split(' ').map {|w| w.reverse}.join(' ')
end

def adder value = 1, &block
  block.call + value
end

def repeater value = 1, &block
  value.times do
    block.call
  end
end