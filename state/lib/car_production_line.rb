class CarProductionLine
  attr_accessor :state
  def initialize
    @state = EngineInstallationState.new self
  end

  def move_to! state
    @state.next state
  end
end
