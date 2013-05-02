def echo(str)
   str
end

def shout(str)
  str.upcase
end

def repeat(str, n=2)
  ((str + ' ') * (n - 1)) + str
end

def start_of_word(str, n)
  str.slice(0, n)
end

def first_word(str)
  str.slice(0, str.index(' '))
end

def titleize(str)
  words=str.split(' ').map {|word|
    if ['the', 'and', 'over'].include?(word)
      word
    else
      word.capitalize
    end
  }
  words.first.capitalize!
  words.join(' ')
end