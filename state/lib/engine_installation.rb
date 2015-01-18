class EngineInstallationState
  def initialize context
    @context = context
  end

  def next state
    if state == :hood then
      @context.state = HoodInstallationState.new
    else
      raise IllegalStateJumpError, "State machine is not being respected."
    end
  end
end
