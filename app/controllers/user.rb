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

get '/users/:id' do
  # show username and links based on session[:user_id]
end

get '/users/:id/submissions' do
  #show all submissions for user with id == :id
end

get '/users/:id/comments' do
  #show all comments for user with id == :id
end
