post '/upload' do
  @photo = Photo.new(params[:photo])
  @photo.save!

  redirect '/'
end