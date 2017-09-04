require 'sinatra'
require_relative 'models/data_store'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  get '/' do
    'Database Server Tech Test'
  end

  post '/set' do

  end
end
