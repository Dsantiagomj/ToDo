get '/todos' do
     @todos = Todo.all
     erb :'todos/index'
end

 get '/todos/create' do
     erb :'todos/create'
end

 post '/todos' do
    Todo.add({
    "title": params[:title],
    "description": params[:description]
    })
    redirect '/todos'
end 