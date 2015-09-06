require "spec_helper"

RSpec.describe PrefabPatterns::Styleguide do
  before do
    @styleguide = PrefabPatterns::Styleguide.new
  end

  describe "#all_patterns" do
    context "the application has 2 patterns" do
      it "returns the card pattern object" do
        File.new(view_path("slat"),  "w+")
        decorated_slat = @styleguide.decorated_file("slat")

        response = @styleguide.all_patterns

        expect(response).to include(decorated_slat)

        FileUtils.remove_dir(view_path("slat"), force: true)
      end
    end
  end

  describe "#decorated_file" do
    context "the pattern has css, js and a view" do
      it "returns a decorated pattern object" do
        allow(File).to receive(:exist?).and_return(true)

        decorated_object = @styleguide.decorated_file("card")

        expect(decorated_object.view_path).to eq view_path("card")
        expect(decorated_object.stylesheet).to eq stylesheet_path("card")
        expect(decorated_object.javascript).to eq javascript_path("card")
      end
    end
  end

  describe "#file_path?" do
    context "for a file that doesn't exist" do
      it "should return an empty string" do
        response = @styleguide.file_path?("non_existant_file")

        expect(response).to eq nil
      end
    end
  end

  describe "#file_name_with_no_underscore_or_extension" do
    it "returns a file name with no underscore or extension" do
      file_name = "_file.name.ext"
      parsed_file = @styleguide.file_name_with_no_underscore_or_extension(file_name)

      expect(parsed_file).to eq "file"
    end
  end
end
