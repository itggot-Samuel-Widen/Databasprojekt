class App < Sinatra::Base

	get '/' do
		slim(:index)
	end

	get '/lol' do
		slim(:lol)
	end
end
