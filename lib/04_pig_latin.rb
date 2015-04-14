#check for initial capital letter
def capitalized?(word)
  if word[0].match(/[A-Z]/)
    true
  else
    false
  end
end

#rearrange letter characters
def rearrange(word)
  word.downcase!
  if word[0].match(/[aeiou]/)
    word + "ay"
  elsif word[0..1] == "qu"
    rearrange(word[2..-1]+word[0..1])
  else
    rearrange(word[1..-1]+word[0])
  end
end

#remove trailing punctuation
def remove_trailing_punctuation(word)
  if word[-1].match(/[A-Za-z]/)
    word
  else
    remove_trailing_punctuation(word[0..-2])
  end
end

#store trailing punctuation
def store_trailing_punctuation(word)
  punctuation = ""
  word.reverse.each_char do |char|
    unless char.match(/[A-Za-z]/)
      punctuation = char + punctuation
    else
      break
    end
  end
  punctuation
end

def piggify(word)
  if capitalized?(word)
    (rearrange(remove_trailing_punctuation(word)) + store_trailing_punctuation(word)).capitalize
  else
    rearrange(remove_trailing_punctuation(word)) + store_trailing_punctuation(word)
  end
end

def translate(words)
  trans_words = []
  words.split.each {|word| trans_words << piggify(word)}
  trans_words.join(" ")
end


