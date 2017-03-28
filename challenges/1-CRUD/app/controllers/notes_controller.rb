get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/crear' do
  erb :crear
end

get '/notes/:id/edit' do
  @nota = Note.find_by(id: params[:id])
  erb :edit
end

get '/notes/:id/delete' do
  @nota = Note.find_by(id: params[:id])
  @nota.destroy
  redirect "/"
end


get '/notes/:id' do
  @nota = Note.find_by(id: params[:id])
  erb :nota
end


post '/notes' do
  @nota = Note.new(params[:nota])
  if @nota.save
    @nota.save
    redirect '/'
  else
    @errors = @nota.errors.full_messages
    erb :crear
  end
end

patch '/notes/:id' do
  @nota = Note.find_by(id: params[:id])
  @nota.update(params[:nota])
  redirect "/notes/#{@nota.id}"
end
