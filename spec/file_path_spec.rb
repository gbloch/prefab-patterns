require "spec_helper"

RSpec.describe DesignOrigami::FilePath do
  before do
    @path = DesignOrigami::FilePath.new("pattern")
    stub_const("FILE_PATH", "http://example.com/")
  end

  describe "#html_source" do
    it "returns the correct source to import HTML from" do
      result = @path.html_source

      expect(result).to eq "http://example.com/app/views/patterns/_pattern.html.erb"
    end
  end

  describe "#html_destination" do
    it "returns the correct absolute path to copy the HTML file to" do
      result = @path.html_destination

      html_path = "app/views/patterns/_pattern.html.erb"
      expect(result).to eq html_path
    end
  end

  describe "#javascript_source" do
    it "returns the correct source to import Coffee from" do
      result = @path.javascript_source
      source = "http://example.com/app/assets/javascripts/patterns/pattern.coffee"

      expect(result).to eq source
    end
  end

  describe "#javascript_destination" do
    it "returns the correct absolute path to copy the Coffee file to" do
      result = @path.javascript_destination
      destination = "app/assets/javascripts/patterns/pattern.coffee"

      expect(result).to eq destination
    end
  end

  describe "#spec_source" do
    it "returns the correct source to import specs from" do
      result = @path.spec_source
      source = "http://example.com/spec/javascripts/pattern_spec.coffee"

      expect(result).to eq source
    end
  end

  describe "#spec_destination" do
    it "returns the correct absolute path to copy the spec file to" do
      result = @path.spec_destination
      destination = "spec/javascripts/pattern_spec.coffee"

      expect(result).to eq destination
    end
  end

  describe "#spec_template_source" do
    it "returns the correct source to import spec templates from" do
      result = @path.spec_template_source
      source = "http://example.com/spec/javascripts/templates/pattern.jst.ejs"

      expect(result).to eq source
    end
  end

  describe "#spec_template_destination" do
    it "returns the correct absolute path to copy the spec file to" do
      result = @path.spec_template_destination
      destination = "spec/javascripts/templates/pattern.jst.ejs"

      expect(result).to eq destination
    end
  end

  describe "#stylesheet_source" do
    it "returns the correct source to import Scss from" do
      result = @path.stylesheet_source

      expect(result).to eq "http://example.com/app/assets/stylesheets/patterns/_pattern.scss"
    end
  end

  describe "#stylesheet_destination" do
    it "returns the correct absolute path to copy the Scss file to" do
      result = @path.stylesheet_destination

      scss_path = "app/assets/stylesheets/patterns/_pattern.scss"
      expect(result).to eq scss_path
    end
  end
end
