class Timer
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def seconds=(t)
    @seconds = t
  end
  def time_string
    hours = @seconds/3600
    minutes = (@seconds - 3600 * hours)/60
    seconds = @seconds - 3600 * hours - 60 * minutes
    digitize = lambda  do |snum|
      if snum.to_s.length == 1
        "0#{snum}"
      else
        snum.to_s
      end
    end
    "#{digitize.call(hours)}:#{digitize.call(minutes)}:#{digitize.call(seconds)}"
  end
end

      