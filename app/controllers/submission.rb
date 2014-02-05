require 'pry'
get '/submissions/:id' do
  @submission = Submission.find(params[:id])
  # show submission info from url ID
  # show all comments associated with submission
  # show comment text box for you to leave comments
  # params[:id]
  erb :submission
end

get '/submit' do
  # display submission page with forms
  # take user supplied submission info
  # then post to /submit
  erb :submit
end

post '/submit' do
  # creates submission (with URL, title, text, session[:user_id])
  # returns errors if errors?
  # if successful, redirect to newly created submission
  # fix user_id part
  s = Submission.create(title: params[:title], url: params[:url], text: params[:textarea], user_id: 1)
  redirect("/submissions/#{s.id}")
end

post '/upvote' do

  user = User.find(session[:user_id])
  s = Submission.find(params[:id]) # how to get this id?
  s.submission_votes << SubmissionVote.create(user_id: user.id)
  return_hash = {:votes => s.submission_votes.count.to_s}.to_json
end
