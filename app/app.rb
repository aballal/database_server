require 'sinatra'
require_relative 'models/data_store'

# Database server
class DatabaseServer < Sinatra::Base
  set :port, 4000
  data_store = DataStore.instance

  get '/' do
    'Database Server Tech Test'
  end

  get '/set' do
    if params.empty?
      'Params missing'
    else
      data_store.set(params.keys.first, params.values.first)
    end
  end

  get '/get' do
    value = data_store.get(params.values.first)
    value ? value : 'Key not found'
  end
end
