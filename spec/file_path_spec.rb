require "spec_helper"

RSpec.describe DesignOrigami::FilePath do
  before do
    @path = DesignOrigami::FilePath.new("pattern")
    stub_const("FILE_PATH", "http://example.com/")
  end

  describe "#html_source" do
    it "returns the correct source to import HTML from" do
      result = @path.html_source

      expect(result).to eq "http://example.com/pattern/pattern.html.erb"
    end
  end

  describe "#html_destination" do
    it "returns the correct absolute path to copy the HTML file to" do
      result = @path.html_destination

      html_path = "app/views/patterns/pattern.html.erb"
      expect(result).to eq html_path
    end
  end

  describe "#scripts_source" do
    it "returns the correct source to import Coffee from" do
      result = @path.script_source

      expect(result).to eq "http://example.com/pattern/pattern.coffee"
    end
  end

  describe "#script_destination" do
    it "returns the correct absolute path to copy the Coffee file to" do
      result = @path.script_destination

      script_path = "app/assets/scripts/patterns/pattern.coffee"
      expect(result).to eq script_path
    end
  end

  describe "#stylesheet_source" do
    it "returns the correct source to import Scss from" do
      result = @path.stylesheet_source

      expect(result).to eq "http://example.com/pattern/pattern.scss"
    end
  end

  describe "#stylesheet_destination" do
    it "returns the correct absolute path to copy the Scss file to" do
      result = @path.stylesheet_destination

      scss_path = "app/assets/stylesheets/patterns/pattern.scss"
      expect(result).to eq scss_path
    end
  end
end
