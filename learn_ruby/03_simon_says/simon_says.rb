def echo(str)
   str
end
def shout(str)
  str.upcase
end
def repeat(str,n=2)
  ((str+' ') * (n-1))+str
end
def start_of_word(str,n)
  str.slice(0,n)
end
def first_word(str)
  str.slice(0,str.index(' '))
end
def titleize(str)
  a=['and','over','the']
  first=true;
  str.split(' ').map {|w|
    little=false
    a.each do |e|
      if w==e
        little=true
      end
    end
    if !little or first
      w=w.capitalize
    end
    first=false
    w
  }.join(' ')
end