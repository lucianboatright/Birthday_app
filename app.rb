require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/take_name' do
    p params
    #can i put all three params in one
    @users = params[:name]
    @date = params[:date] 
    @month = params[:month]
    erb :form  #User.new(params[:name])
  end

  # get '/show_bday' do 

  run! if app_file == $0
end