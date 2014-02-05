get '/login' do
  #show login/signup view
end

post '/login' do
  # verify login and password
  # redirect to / if successful
  # display error if unsuccessful
  redirect '/'
end

post '/signup' do
  # take user supplied info
  # create user based on info given
  # redirect to login if creation successful
  # reload page showing error if unsuccessful
end
