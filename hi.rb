require 'sinatra'

get '/' do
	erb :index
end
post '/namereceive' do 
	@name = params[:name]
	@email = params[:email]
	@error_hash = {}
	if @name.nil? or @name == ''
		@error_hash[:name] = "name is empty"
	elsif @email.nil? or @email = '' 
		@error_hash[:email] = "email is empty"
	end
	if @error_hash.keys.length == 0
		erb :success
	else 
		erb :index 
	end
end

