get '/players/new' do
	erb :'players/new'
end

get '/players/:id' do
	@player =	Player.find(params[:id])

	erb :'players/show'
end

get'/players/' do
	@players = Player.all

	erb :'players/index'
end

post '/players/' do
	@player = Player.create(name: params[:name], age: params[:age], sex: params[:sex])
	redirect("/players/")
end

get '/players/:id/edit' do
	@player =	Player.find(params[:id])

	erb :'players/edit'
end

put '/players/:id' do
	@player = Player.update(params[:id], name: params[:name], age: params[:age], sex: params[:sex])
	redirect("/players/")
end

delete '/players/:id' do
	Player.delete(params[:id])
	redirect("/players/")
end