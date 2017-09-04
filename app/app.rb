require 'sinatra'

class DatabaseServer < Sinatra::Base
  set :port, 4000

  get '/' do
    'Database Server Tech Test'
  end
end
