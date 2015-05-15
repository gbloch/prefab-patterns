ENV["RAILS_ENV"] ||= "test"

require "design_origami"
require "rspec"

require File.expand_path(
  "../../spec/dummy/config/environment.rb",  __FILE__
)

RSpec.configure do |config|
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
