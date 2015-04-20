class RPNCalculator
  
  attr_accessor :value
  
  def initialize
    @stack = []
    @value = 0
  end
  
  def push(num)
    @stack.push(num)
  end
  
  def plus
    num1 = @stack.pop
    num2 = @stack.pop
    @value = num2 + num1
    @stack.push(@value)
  end
  
  def minus
    num1 = @stack.pop
    num2 = @stack.pop
    @value = num2 - num1
    @stack.push(@value)
  end
  
  def times
    num1 = @stack.pop
    num2 = @stack.pop
    @value = num2 * num1
    @stack.push(@value)
  end
  
  def divide
    num1 = @stack.pop
    num2 = @stack.pop
    @value = num2.to_f / num1.to_f
    @stack.push(@value)
  end
    
    
    
end
