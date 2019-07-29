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


# End of the ApplicationController class
end
