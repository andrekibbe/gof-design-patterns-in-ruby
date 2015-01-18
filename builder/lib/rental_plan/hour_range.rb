class HourRange
  attr_reader :start, :finish
  def initialize start = 1, finish = 24
    @start = start
    @finish = finish
  end
end
