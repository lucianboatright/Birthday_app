require 'sinatra/base'
require './lib/time_piece'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :home
  end

  post '/take_name' do
    #can i put all three params in one
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/validation'  #User.new(params[:name])
  end

  get '/validation' do
    @name = session[:name]
    @user = TimePiece.new(session[:month],session[:day])
    @user.birthday? ? (redirect('/birthday_celebration')) : (redirect('/birthday_count_down')) 
  end


  get '/birthday_count_down' do
    @name = session[:name]
    @user = TimePiece.new(session[:month],session[:day])
    erb :form
  end

  get '/birthday_celebration' do
    @date = session[:day]
    @name = session[:name]
    @month = session[:month]
    erb :celebrate
  end


  run! if app_file == $0
end




# if tday = day


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


