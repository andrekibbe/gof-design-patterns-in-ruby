require 'test_helper'
require 'newsletter/generators/base'
require 'newsletter/generators/html'
require 'newsletter/generators/markdown'

module Newsletter
  describe Generators::Base do
    it "generates a newsletter in HTML" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.html",
        File.dirname(__FILE__)
      )

      Generators::Base.new(:html).render.must_include final_result
    end

    # --
    it "generates a report in Markdown" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.markdown",
        File.dirname(__FILE__)
      )

      Generators::Base.new(:markdown).render.must_include final_result
    end
    
  end
end
