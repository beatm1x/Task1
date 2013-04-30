def translate(str)
  str.split(' ').map {|w| translate_word(w) }.join(' ')
end
def translate_word(str)
  i=0
  phoneme=['qu','sch']
  is_phoneme=false
  phoneme.each do |ph|
    if str.include? ph and str.index(ph)==0
      i=ph.length
    end
  end
  if i==0
    while not(is_vowel(str[i]))
      i+=1
    end
  end
  if i>0
    str=first_to_end(str,i)
  end
  str+'ay'
end
def first_to_end(str,i)
  c=str[0..i-1]
  str=str[i..str.length]
  str[str.length..str.length+i]=c
  str
end
def is_vowel(char)
  vowels=['A', 'E', 'I', 'O', 'U', 'Y']
  f=false
  vowels.each do |c|
    if c==char.upcase
      f=true
    end
  end
  f
end
