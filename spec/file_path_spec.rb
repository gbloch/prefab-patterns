require "spec_helper"

RSpec.describe PrefabPatterns::FilePath do
  before do
    @pattern_name = "pattern"
    @path = PrefabPatterns::FilePath.new(@pattern_name)
    stub_const("FILE_PATH", "http://example.com/")
  end

  describe "#view_source" do
    it "returns the correct source to import HTML from" do
      result = @path.view_source

      expect(result).to eq view_source(@pattern_name)
    end
  end

  describe "#view_destination" do
    it "returns the correct absolute path to copy the HTML file to" do
      result = @path.view_destination

      expect(result).to eq view_path("pattern")
    end
  end

  describe "#javascript_source" do
    it "returns the correct source to import Coffee from" do
      result = @path.javascript_source

      expect(result).to eq javascript_source(@pattern_name)
    end
  end

  describe "#javascript_destination" do
    it "returns the correct absolute path to copy the Coffee file to" do
      result = @path.javascript_destination

      expect(result).to eq javascript_path("pattern")
    end
  end

  describe "#stylesheet_source" do
    it "returns the correct source to import Scss from" do
      result = @path.stylesheet_source

      expect(result).to eq stylesheet_source(@pattern_name)
    end
  end

  describe "#stylesheet_destination" do
    it "returns the correct absolute path to copy the Scss file to" do
      result = @path.stylesheet_destination

      expect(result).to eq stylesheet_path("pattern")
    end
  end
end
