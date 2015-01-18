require 'test_helper'
require 'generator'
require 'generators/html'
require 'generators/markdown'

module Newsletter
  describe Generator do
    # --
    it "generates a newsletter in HTML" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.html",
        File.dirname(__FILE__)
      )

      Generators::HTML.new.render.must_include final_result
    end

    # --
    it "generates a report in Markdown" do
      final_result = File.read File.expand_path(
        "fixtures/newsletter.markdown",
        File.dirname(__FILE__)
      )

      Generators::Markdown.new.render.must_include final_result
    end

    # --
    it "fails to render if calling the base generator class" do
      -> { Generator.new.header }.must_raise NotImplementedError
      -> { Generator.new.content }.must_raise NotImplementedError
    end
  end
end
