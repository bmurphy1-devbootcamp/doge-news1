require 'faker'

User.create(username: "doge", email: 'doge@doge.com', password: "1234")
10.times do
  s = Submission.create(title: Faker::Lorem.sentence, url: Faker::Internet.url, text: Faker::Lorem.paragraph, user_id: 1)
  5.times do
    Comment.create(text: Faker::Lorem.sentence, user_id: 1, submission_id: s.id)
  end
end

