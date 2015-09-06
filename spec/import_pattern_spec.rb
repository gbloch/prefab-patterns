require "spec_helper"

RSpec.describe PrefabPatterns::ImportPattern do
  describe "#import_pattern" do
    it "imports the correct files for the card pattern" do
      file_name = "pattern"
      stub_const("FILE_PATH", "http://example.com/")
      stub_request_for_source_file

      import_pattern = PrefabPatterns::ImportPattern.new(file_name)
      import_pattern.import_pattern

      expect(File).to exist javascript_path(file_name)
      expect(File).to exist stylesheet_path(file_name)
      expect(File).to exist view_path(file_name)

      FileUtils.remove_dir javascript_path(file_name), force: true
      FileUtils.remove_dir stylesheet_path(file_name), force: true
      FileUtils.remove_dir view_path(file_name), force: true
    end
  end

  private

  def stub_request_for_source_file
    stub_request(:get, /http:\/\/example.com\/.*/).
      to_return(status: 200, body: "hello world!")
  end
end
