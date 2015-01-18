class VideoAuthenticationProxy
  def initialize video, user
    @video = video
    @user = user
  end

  def play
    if @user == "Privileged"
      @video.play
    else
      raise ForbiddenAccessError, "Only privileged users are allowed."
    end
  end
end
