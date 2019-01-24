require 'sinatra/base'

class Birthday < Sinatra::Base
  set :session_secret, 'secret af'
  enable :sessions

get ('/') do
  erb(:index)
end

get ('/birthday') do
  @name = session[:name]
  @day = session[:day]
  @month = session[:month]
  @countdown = countdown(@day.to_i, @month.to_i)
  erb(:birthday)
end

post '/submit' do
  p params
  session[:name] = params[:name]
  session[:day] = params[:day]
  session[:month] = params[:month]
  redirect '/birthday'
end

private

def countdown(day, month)
  bday = Date.new(Date.today.year, month, day)
  bday = Date.new(Date.today.year + 1, month, day) if Date.today >= bday
  (bday - Date.today).to_i
end

  run! if app_file == $0
end
