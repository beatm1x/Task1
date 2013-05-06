def translate(str)
  str.split(' ').map {|w| translate_word(w)}.join(' ')
end

def translate_word(str)
  i = 0
  ['qu', 'sch'].each do |phoneme|
    if str.include? phoneme and str.index(phoneme) == 0
      i = phoneme.length
    end
  end
  if i == 0
    while not(is_vowel(str[i]))
      i += 1
    end
  end
  if i > 0
    str = first_to_end(str, i)
  end
  str + 'ay'
end

def first_to_end(str, i)
  temp = str[0 .. i - 1]
  str = str[i .. str.length]
  str[str.length .. str.length + i] = temp
  str
end

def is_vowel(char)
  vowels = ['A', 'E', 'I', 'O', 'U', 'Y']
  result = false
  vowels.each do |vowel|
    if vowel == char.upcase
      result = true
    end
  end
  result
end
