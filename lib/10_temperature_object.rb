class Temperature
  # TODO: your code goes here!
  def initialize(opts = {})
    @opts = opts
  end
  
  
  
  def in_fahrenheit
    if @opts.has_key?(:f)
      @opts[:f]
    elsif @opts.has_key?(:c)
      (@opts[:c] * 9.0/5.0 + 32).round(1) 
    end
  end
  
  def in_celsius
    if @opts.has_key?(:c)
      @opts[:c]
    elsif @opts.has_key?(:f)
      ((@opts[:f] - 32) * 5.0/9.0).round(1) 
    end
  end
  
  def self.from_celsius(x)
    Temperature.new({:c => x})
  end
  
  def self.from_fahrenheit(x)
    Temperature.new({:f => x})
  end
end

class Celsius < Temperature
  def initialize(temp)
    super({:c => temp})
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super({:f => temp})
  end
end