get '/games/new' do
	erb :'games/new'
end

get '/games/:id' do
	@game =	Game.find(params[:id])

	erb :'games/show'
end

get'/games/' do
	@games = Game.all

	erb :'games/index'
end

post '/games/' do
	@game = Game.create(name: params[:name], description: params[:description], 
		player_count: params[:player_count], avg_length: params[:avg_length])
	redirect("/games/")
end

get '/games/:id/edit' do
	@game =	Game.find(params[:id])

	erb :'games/edit'
end

put '/games/:id' do
	@game = Game.update(params[:id], name: params[:name], description: params[:description], 
		player_count: params[:player_count], avg_length: params[:avg_length])
	redirect("/games/")
end

delete '/games/:id' do
	Game.delete(params[:id])
	redirect("/games/")
end