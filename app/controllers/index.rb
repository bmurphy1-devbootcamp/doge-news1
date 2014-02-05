get '/' do
  # show list of submissions sorted by most recent created_at
  # if not logged in, show login link
  # if logged in, show username/profile link instead
    # maybe with partials?
  erb :index
end


