require 'capybara/rspec'
require File.join(File.dirname(__FILE__), '..', 'app/app.rb')
Capybara.app = DatabaseServer

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
