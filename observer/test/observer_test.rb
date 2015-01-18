require "test_helper"
require 'user'

module Application
  describe User do
    let(:user) {
      user = User.new("josemotanet", "Jose Mota", "Software Designer")
    }

    it "notifies spectators of changes to the user" do
      observer = Minitest::Mock.new
      observer.expect :updated, nil, [ user ]

      user.subscribe observer
      user.update :username, "josemota"
      observer.verify
    end

    it "prints the contents of the changed user" do
      observer = UserObserver.new
      user.subscribe observer
      
      capture { user.update :username, "josemota" }.string.must_include "josemota"
    end
  end
end
