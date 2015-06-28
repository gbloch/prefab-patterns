module StubHelper
  def stub_request_for_source_file
    stub_request(:get, /http:\/\/example.com\/.*/).
      to_return(status: 200, body: "hello world!")
  end
end
