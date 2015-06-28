require "spec_helper"

RSpec.describe DesignOrigami::Enable do
  describe "#enable" do
    context "konacha" do
      it "creates the necessary files to run konacha" do
        stub_const("FILE_PATH", "http://example.com/")
        spec_helper_file = "spec/javascripts/spec_helper.coffee"
        templates_dir = "spec/javascripts"
        stub_request_for_source_file

        DesignOrigami::Enable.new("konacha").enable

        expect(File).to exist spec_helper_file
        expect(Dir).to exist templates_dir
        
        FileUtils.remove_dir(templates_dir, force: true)
      end
    end
  end 
end
