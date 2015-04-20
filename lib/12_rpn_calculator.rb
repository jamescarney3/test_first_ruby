class RPNCalculator < Array
  
  attr_accessor :value
  
  def initialize
    @value = 0
  end
  
  def plus
    if self.length < 2
      raise "calculator is empty"
    end
    num1 = self.pop
    num2 = self.pop
    @value = num2 + num1
    self.push(@value)
  end
  
  def minus
    if self.length < 2
      raise "calculator is empty"
    end
    num1 = self.pop
    num2 = self.pop
    @value = num2 - num1
    self.push(@value)
  end
  
  def times
    if self.length < 2
      raise "calculator is empty"
    end
    num1 = self.pop
    num2 = self.pop
    @value = num2 * num1
    self.push(@value)
  end
  
  def divide
    if self.length < 2
      raise "calculator is empty"
    end
    num1 = self.pop
    num2 = self.pop
    @value = num2.to_f / num1.to_f
    self.push(@value)
  end
  
  def tokens(input)
    strokes = []
    input.split(" ").each do |stroke|
      if stroke.match(/\d/)
        strokes.push(stroke.to_i)
      elsif stroke == "+"
        strokes.push(:+)
      elsif stroke == "-"
        strokes.push(:-)
      elsif stroke == "*"
        strokes.push(:*)
      elsif stroke == "/"
        strokes.push(:/)
      end
    end
    strokes
  end
  
  def evaluate(input)
    tokens(input).each do |stroke|
      if stroke.class == Fixnum
        self.push(stroke.to_i)
      elsif stroke == :+
        self.plus
      elsif stroke == :-
        self.minus
      elsif stroke == :*
        self.times
      elsif stroke == :/
        self.divide
      end
    end
    @value
  end
  
end
