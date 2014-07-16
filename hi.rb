require 'sinatra'

get '/' do
	erb :index
end
post '/namereceive' do 
	@name = params[:name]
	@email = params[:email]
	erb :index
end
