class Array
  
  def sum
    total = 0
    self.each {|num| total += num}
    total
  end
  
  def square
    out = []
    self.each {|num| out.push(num**2)}
    out
  end
  
  def square!
    (0..self.length - 1).to_a.each do |index|
      self[index] = self[index]**2
    end
  end
  
end