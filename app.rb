require 'sinatra/base'

class Birthday < Sinatra::Base

  # enable

  # get '/' do
  #   erb :home
  # end

  run! if app_file == $0
end