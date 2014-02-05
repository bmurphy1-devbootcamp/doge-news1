enable :sessions

get '/login' do
  #show login/signup view
  erb :login
end

post '/login' do
  # verify login and password
  # redirect to / if successful
  # display error if unsuccessful
  if User.authenticate(params[:username], params[:password])
    session[:user_id] = User.find_by(username: params[:username]).id
    redirect '/'
  else
    redirect '/login?invalid_login'
  end
end

post '/signup' do
  user = User.create(username: params[:username], email: params[:email], password: params[:password])
  if user.errors.any?
    redirect "/login?error=#{user.errors.messages}"
  else
    redirect "/login?success=1"
  end
  # take user supplied info
  # create user based on info given
  # redirect to login if creation successful
  # reload page showing error if unsuccessful
end

get '/users/:id/submissions' do
  @user = User.find(params[:id])

  #show all submissions for user with id == :id
  erb :user_submissions
end

get '/users/:id' do
  @user = User.find(params[:id])
  # show username and links to submissions/comments
    # based on session[:user_id]
    erb :user
end


get '/users/:id/comments' do
  @user = User.find(params[:id])
  #show all comments for user with id == :id
  erb :user_comments
end
