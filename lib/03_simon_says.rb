def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(words, reps = 2)
  all_the_words = []
  reps.times {|i| all_the_words.push(words)}
  all_the_words.join(" ")
end

def start_of_word(word, how_far)
  word[0...how_far]
end

def first_word(words)
  words.split[0]
end

def titleize(words)
  stop_words = %w[and over the] #only relevant stop words for this ex., more robust lists available elsewhere
  result_words = []
  words.capitalize.split.each do |word|
    unless stop_words.include?(word)
      result_words.push(word.capitalize)
    else
      result_words.push(word)
    end
  end
  result_words.join(" ")
end
