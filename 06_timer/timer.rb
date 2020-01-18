class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
end

def placement(i)
  if i < 10
    "0#{i}"
  else
    "#{i}"
  end
end

def time_string
  @minutes = @seconds / 60
  @seconds %= 60
  @hours = @minutes / 60
  @minutes %= 60
  "#{placement(@hours)}:#{placement(@minutes)}:#{placement(@seconds)}"
end

def placement(num)
  if num == 0
    "00"
  elsif num > 0 &&  num < 10
    "0#{num}"
  else
    "#{num}"
  end
end
end