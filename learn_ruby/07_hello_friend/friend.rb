class Friend
  def greeting(name = '')
    if name != ''
      name = ', ' + name
    end
    "Hello#{name}!"
  end
end