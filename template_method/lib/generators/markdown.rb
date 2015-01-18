module Newsletter
  module Generators
    class Markdown < Generator
      def header
        "# Hello World!"
      end

      def content
        "lorem ipsum"
      end
    end
  end
end
