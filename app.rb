require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate = params[:pirate]
      #@pirate_name = params[pirate["name"]]
      #@ship_name_1 = params[pirate[ships][0]["name"]]
      #@ship_name_2 = params[pirate[ships][1]["name"]]
      @pirate_name = pirate[:name]
      @ship_name_1 = pirate[:ships][0][:name]
      #@ship_name_2 = pirate[:ships][1][:name]
      erb :'pirates/show'
    end

  end
end
