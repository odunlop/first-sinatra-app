require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret!"
end