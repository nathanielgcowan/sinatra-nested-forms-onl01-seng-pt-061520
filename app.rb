<<<<<<< HEAD
require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all

      erb :'pirates/show'
    end
    
  end
end
=======
require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do 
      erb :root
    end
    
    get '/new' do 
      erb: 'pirates/new'
    end 
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships.each do |details]
      Ship.new(details)
      end 
      @ships = Ship.all
      
      erb : 'pirates/show'
    end 
    
    
end
>>>>>>> a3107fd8b0c3a9b11caa29feb80a3e9ca7aee52d
