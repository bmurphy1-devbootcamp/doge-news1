get '/submissions/:id' do
  # show submission info from url ID
  # show all comments associated with submission
  # show comment text box for you to leave comments
  # params[:id]
end

get '/submit' do
  # display submission page with forms
  # take user supplied submission info
  # then post to /submit
end

post '/submit' do
  # creates submission (with URL, title, text, session[:user_id])
  # returns errors if errors?
  # if successful, redirect to newly created submission
end
