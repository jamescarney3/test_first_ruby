class Book
  def initialize(title = nil)
    @title = title
    @stop_words = %w{the a an and in of}
  end
  def title=(title)
    @title = title
  end
  def title
    title_words = []
    @title.split(" ").each do |word|
      if not @stop_words.include?(word)
        word.capitalize!
      end
      title_words.push(word)
    end
    title_words[0].capitalize!
    title_words.join(" ")
  end 
end