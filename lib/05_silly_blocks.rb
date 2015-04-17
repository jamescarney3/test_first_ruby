def reverser
  words = yield.split(" ")
  rev_words = []
  words.each {|word| rev_words.push(word.reverse)}
  rev_words.join(" ")
end

def adder(addend = 1)
  yield + addend
end

def repeater(t = 1)
  t.times {yield}
end
  
  
