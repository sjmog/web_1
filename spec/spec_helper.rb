# Brings in something to do with testing Sinatra
require 'rack/test'
# Brings in RSpec methods like 'describe' and 'it'
require 'rspec'

# Sets the environment to 'test'
ENV['RACK_ENV'] = 'test'

# Copy-paste the app file in here right now
require File.expand_path '../../app.rb', __FILE__

# Gives us methods to test Sinatra
# and defines an app that we can test
module RSpecMixin
  include Rack::Test::Methods
  def app() Sinatra::Application end
end

# Include the module in every test
RSpec.configure { |c| c.include RSpecMixin }

# Other stuff
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
