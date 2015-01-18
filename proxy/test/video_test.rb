require 'test_helper'
require 'video'

describe Video do
  let(:video_title)        { "Welcome to Tuts+" }
  let(:description) { "In this lesson you'll learn about the proxy pattern" }
  let(:video)       { Video.new video_title, description }

  it "shows the video_title" do
    capture { video.play }.string.must_include video_title
  end

  it "shows the description" do
    capture { video.play }.string.must_include description
  end
end
