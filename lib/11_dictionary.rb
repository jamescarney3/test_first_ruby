class Dictionary
  def initialize
    @entries = {}
  end
  
  def entries
    @entries
  end
  
  def add(keys)
    if keys.class == Hash
      @entries.merge!(keys)
    elsif keys.class == String
      @entries.merge!(keys => nil)
    end
  end
    
  def keywords
    @entries.keys.sort
  end
  
  def include?(entry)
    @entries.keys.include?(entry)
  end
  
  def find(entry)
    result = {}
    @entries.keys.each do |key|
      if key.match(entry)
        result[key] = @entries[key]
      end
    end
    result
  end
  
  def printable
    defs = []
    @entries.keys.sort.each do |entry|
      defs.push(%Q{[#{entry}] "#{@entries[entry]}"})
    end
    defs.join("\n")
  end
  
  
end
