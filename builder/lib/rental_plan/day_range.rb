class DayRange
  attr_reader :start, :hour_ranges
  def initialize hour_ranges, start = 1, finish = 9999
    @start = start
    @finish = finish
    @hour_ranges = hour_ranges
  end

  def self.build
    build_hour_ranges
    new @hour_ranges
  end

  def self.build_hour_ranges
    @hour_ranges = [ HourRange.new ]
  end
end
