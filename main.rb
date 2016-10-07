require 'sinatra'

get "/" do 
	puts "Params data below"		# this will output to console
	puts params.inspect 			# the will output to console
	"please check your server logs, friend"
	erb :home
end


post '/login' do
	users = {
		"cam" => "hawaii",
		"brian" => "alexis",
		"mike" => "something",
		"izza" => "watson"
	}

	#do our password checking here 
	puts params[:username].downcase
	if users[params[:username].downcase] == params[:password]
		#logged in successfully
		"You did it! Welcome back #{params[:username]}."
	else
		"You are nefarious. Please leave."	
	end
end

get '/contact_us' do
	puts params.inspect
	puts "you have arrived"
	erb :contact_us
end


post '/contact_us' do #this is a rout (where info is being collected from)
	@result = params[:message]
	erb :contact_us

end	

get '/contact_us' do
	puts "Welcome friend"
	erb :contact_us
end

post '/contact_us' do
	puts params.inspect
	erb :contact_us
end



