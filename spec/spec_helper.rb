ENV["RAILS_ENV"] ||= "test"

require "design_origami"
require "pry-byebug"
require "rspec"
require "webmock/rspec"

require File.expand_path(
  "../../spec/dummy/config/environment.rb",  __FILE__
)

Dir[File.expand_path("spec/support/*.rb")].each do |file|
  require file 
end

RSpec.configure do |config|
  WebMock.disable_net_connect!(allow_localhost: true)

  config.include StubHelper

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end

  config.profile_examples = 0
  config.order = :random
end
