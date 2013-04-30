class Book
  def title=(value)
    first=true;
    @title=value.split(' ').map {|w|
      if is_article(w) and !first
        w
      else
        w=w.capitalize
      end
      first=false
      w
    }.join(' ')
  end
  def is_article(str)
    articles=['the','a','an','and','in','of']
    f=false;
    articles.each do |article|
      if article==str
        f=true
      end
    end
    f
  end
  def title
    @title
  end
end