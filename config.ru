require './app/app'

Rack::Handler.default.run(DatabaseServer, :Port => 4000)
