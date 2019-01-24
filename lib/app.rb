require 'sinatra/base'

class Birthday < Sinatra::Base
  set :session_secret, 'secret af'
  enable :sessions

get ('/') do
  erb(:index)
end

get ('/birthday') do
  @countdown = 15
  @name = session[:name]
  erb(:birthday)
end

post '/submit' do
  session[:name] = params[:name]
  session[:day] = params[:day]
  session[:month] = params[:month]
  redirect '/birthday'
end

  run! if app_file == $0
end
