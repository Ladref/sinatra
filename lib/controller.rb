require 'gossip'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    erb :gossip
    Gossip.new.save
  end



# End of the ApplicationController class
end
