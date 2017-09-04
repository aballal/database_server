require 'capybara/rspec'
require File.join(File.dirname(__FILE__), '..', 'app/app.rb')
Capybara.app = DatabaseServer
