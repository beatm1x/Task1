class Book
  def title=(value)
    words = value.split(' ').map {|word|
      if article?(word)
        word
      else
        word.capitalize
      end
    }
    words.first.capitalize!
    @title = words.join(' ')
  end

  def article?(str)
    ['the','a','an','and','in','of'].inject(false) do |f, article|
      if article == str and !f
        f = true
      end
      f
    end
  end

  def title
    @title
  end
end