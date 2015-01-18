module Application
  class User
    attr_reader :username
    def initialize username, name, job
      @username = username
      @name = name
      @job = job
      @observers = []
    end

    def subscribe observer
      @observers << observer
    end

    def update key, value
      instance_variable_set("@#{key}".to_sym, value)

      @observers.each { |o| o.updated self }
    end
  end

  class UserObserver
    def updated user
      puts user.username
    end
  end
end
