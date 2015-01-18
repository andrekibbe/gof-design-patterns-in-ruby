class Button
  def initialize options
    @label = options[:label]
    @action = options[:action].new
  end

  def click
    @action.execute
  end
end

class ShowMessage
  def execute
    puts "Button was clicked!"
  end
end
