class App < Sinatra::Base

	get '/' do
		slim(:index)
	end

	test 3000
end
