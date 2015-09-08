ENV["CODECLIMATE_REPO_TOKEN"] = "fa8d7f69014d9cc243ebb7f646d65291a06bd3edee13ba112bb705f0a8e6ebc3"

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

ENV["RAILS_ENV"] ||= "test"

require "helpers"
require "prefab_patterns"
require "pry"
require "rspec"
require "webmock/rspec"

require File.expand_path("../../spec/dummy/config/environment.rb",  __FILE__)

RSpec.configure do |config|
  WebMock.disable_net_connect!(
    allow_localhost: true,
    allow: "codeclimate.com"
  )

  config.include Helpers

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
