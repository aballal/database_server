require 'sinatra'

class DatabaseServer < Sinatra::Base
  get '/' do
    'Database Server Tech Test'
  end
end
