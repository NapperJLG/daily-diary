require 'sinatra/base'

class DailyDiary < Sinatra::Base

  set :session_secret, 'super secret'
  enable :sessions

  get '/' do
    erb :index
  end

  get '/add_entry' do
    erb :add_entry
  end

  post '/' do
    @diary_entry = params[:entry]
    erb :index
  end

  run! if app_file ==$0

end
