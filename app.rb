require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  "I'm a secret message... Or maybe not..."
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

get '/cat-naming' do
  erb :cat_naming
end

post '/named-cat' do
  p(params)
  @name = params[:name]
  erb :index
end
