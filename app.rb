require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/take_name' do
    @users = params[:name]
    erb :form  #User.new(params[:name])
  end

  run! if app_file == $0
end