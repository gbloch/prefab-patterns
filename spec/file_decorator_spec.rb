require "spec_helper"

RSpec.describe PrefabPatterns::FileDecorator do
  before do
    stub_const("FILE_PATH", "http://example.com/")

    @pattern_name = "card"
    @file_attributes = PrefabPatterns::FileDecorator.new(@pattern_name, "view")
  end

  describe "file_attributes.type" do
    it "returns the file type" do
      expect(@file_attributes.type).to eq "view"
    end
  end

  describe "file_attributes.source" do
    it "returns the file source" do
      expect(@file_attributes.source).to eq view_source(@pattern_name)
    end
  end

  describe "file_attributes.destination" do
    it "returns the file destination" do
      expect(@file_attributes.destination).to eq view_path(@pattern_name)
    end
  end
end
