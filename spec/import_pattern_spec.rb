require "spec_helper"

RSpec.describe DesignOrigami::ImportPattern do
  after :each do
    FileUtils.remove_dir("app", force: true)
    FileUtils.remove_dir("spec/javascripts", force: true)
  end

  context "has all the file types" do
    describe "#import_pattern" do
      it "imports the correct files for the card pattern" do
        stub_const("FILE_PATH", "http://example.com/")
        stub_request_for_source_file_to_return("Hello world!")

        import_pattern = DesignOrigami::ImportPattern.new("card")
        import_pattern.import_pattern

        expect(File).to exist "app/assets/stylesheets/patterns/_card.scss"
        expect(File).to exist "app/assets/javascripts/patterns/card.coffee"
        expect(File).to exist "app/views/patterns/_card.html.erb"
        expect(File).to exist "spec/javascripts/card_spec.coffee"
        expect(File).to exist "spec/javascripts/templates/card.jst.ejs"
      end
    end
  end

  context "has no files" do
    describe "#import_pattern" do
      it "imports the no files for the no_card pattern" do
        stub_const("FILE_PATH", "http://example.com/")

        stub_request_for_source_file_to_return("")

        import_pattern = DesignOrigami::ImportPattern.new("no_card")
        import_pattern.import_pattern

        expect(File).not_to exist "app/assets/stylesheets/patterns/_no_card.scss"
      end
    end
  end

  private

  def stub_request_for_source_file_to_return(body)
    stub_request(:get, /http:\/\/example.com\/.*/).
      to_return(status: 200, body: body)
  end

  def stub_request_for_source_file
    stub_request(:get, /http:\/\/example.com\/.*/).
      to_return(status: 200, body: "hello world!")
  end
end
