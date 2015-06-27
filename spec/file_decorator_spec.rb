require "spec_helper"

RSpec.describe DesignOrigami::FileDecorator do
  before do
    stub_const("FILE_PATH", "http://example.com/")

    @file_attributes = DesignOrigami::FileDecorator.new("card", "html")
  end

  describe "file_attributes.type" do
    it "returns the file type" do
      expect(@file_attributes.type).to eq "html"
    end
  end

  describe "file_attributes.source" do
    it "returns the file source" do
      expect(@file_attributes.source).to eq "http://example.com/app/views/patterns/_card.html.erb"
    end
  end

  describe "file_attributes.destination" do
    it "returns the file destination" do
      expect(@file_attributes.destination).to eq "app/views/patterns/_card.html.erb"
    end
  end
end
