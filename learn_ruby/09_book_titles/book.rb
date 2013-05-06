class Book
  def title=(value)
    words = value.split(' ').map {|word|
      if is_article(word)
        word
      else
        word.capitalize
      end
    }
    words.first.capitalize!
    @title = words.join(' ')
  end

  def is_article(str)
    f = false;
    ['the','a','an','and','in','of'].each do |article|
      if article == str and !f
        f = true
      end
    end
    f
  end

  def title
    @title
  end
end