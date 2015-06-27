require "spec_helper"

RSpec.describe DesignOrigami::ImportPattern do
  after do
    FileUtils.remove_dir("app", force: true)
  end

  describe "#import_pattern" do
    it "imports the correct files for the card pattern" do
      stub_const("FILE_PATH", "http://example.com/")
      stub_request_for_source_file

      import_pattern = DesignOrigami::ImportPattern.new("card")
      import_pattern.import_pattern

      expect(File).to exist "app/assets/stylesheets/patterns/_card.scss"
      expect(File).to exist "app/assets/javascripts/patterns/card.coffee"
      expect(File).to exist "app/views/patterns/_card.html.erb"
    end
  end

  private

  def stub_request_for_source_file
    stub_request(:get, /http:\/\/example.com\/.*/).
      to_return(status: 200, body: "hello world!")
  end
end
