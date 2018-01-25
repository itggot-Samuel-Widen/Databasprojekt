class App < Sinatra::Base

	get '/' do
		slim(:index)
	end

	get '/publish' do
		slim(:publish)
	end

	post '/publish' do
		db = SQLite3::Database.new("./db/databasprojekt.sqlite")
		description = params[:description]
		tags = params[:tags]
		content = params[:content]
		db.execute("INSERT INTO uploads (description, tags, content) VALUES(?,?,?)", [description, tags, content])
	end

	get '/login' do
		slim (:login)
	end

	get '/register' do
		slim (:register)
	end

	post '/register' do
		db = SQLite3::Database.new("./db/databasprojekt.sqlite")
	end
end
