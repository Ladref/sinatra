require 'gossip'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    puts "Salut, je suis dans le serveur"
    puts "Ceci est le contenu du hash params : #{params}"
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    puts"Vous allez être redirigé au menu principal."
    redirect '/'
  end
  #Params est une variable qui permet de récupérer les éléments du formulaire "new_gossip.erb"

  get '/gossips/:id/' do
    gossip_single = Gossip.find(params['id'].to_i)
    erb :show_gossip, locals: {gossip_single: gossip_single}
  end

# End of the ApplicationController class
end
