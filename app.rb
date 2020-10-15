require 'sinatra/base'

class Battle < Sinatra::Base

    enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:Player_1] = params[:Player_1_name]
    session[:Player_2] = params[:Player_2_name]
    redirect to('/play')
  end 

  get '/play' do 
    erb :play
  end 



  run! if app_file == $0
end