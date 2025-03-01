require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
      erb :index
    end
    
    post '/teams' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      
      @heros = params[:team][:members]
      
      
      erb :team
    end

end
