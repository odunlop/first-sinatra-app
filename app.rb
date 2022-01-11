require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret! Again!"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  erb(:index)
end