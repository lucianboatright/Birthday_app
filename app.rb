require 'sinatra/base'
require './lib/time_piece'

class Birthday < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/take_name' do
    #can i put all three params in one
    @user = TimePiece.new(params[:name], params[:date], params[:month])
    erb :form  #User.new(params[:name])
  end


  run! if app_file == $0
end

# if tday = bday


  # get '/days_till' do
  #   @users = params[:name]
  #   @date = params[:date] 
  #   @month = params[:month]
  #   erb :days


  # player_1 = Player.new(params[:player_1_name])
  # player_2 = Player.new(params[:player_2_name])
  # @game = Game.new(player_1, player_2)
  # redirect '/play'

  # get '/show_bday' do 


