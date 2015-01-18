module Newsletter
  class Content
    attr_reader :title, :body
    def self.parse source, format
      adapter = Newsletter::Adapters::const_get(format.to_s.capitalize).new source
      binding.pry
      content = adapter.parse
      new content["title"], content["body"]
    end

    def initialize title, body
      @title = title
      @body = body
    end
  end
end
