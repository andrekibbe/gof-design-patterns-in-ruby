require 'test_helper'
require 'proxy'
require 'video'

class ForbiddenAccessError < StandardError; end

describe VideoAuthenticationProxy do
  it "allows priviliged users access to the video" do
    video = Video.new "My First Video", "My first description"
    proxy = VideoAuthenticationProxy.new video, "Privileged"

    capture { proxy.play }.string.must_include "My First Video"
    capture { proxy.play }.string.must_include "My first description"
  end

  it "prevents regular users access to the video" do
    video = Video.new "My First Video", "My first description"
    proxy = VideoAuthenticationProxy.new video, "Anonymous"

    -> { proxy.play }.must_raise ForbiddenAccessError
  end
end
