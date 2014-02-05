require 'faker'

User.create(username: "doge", email: 'doge@doge.com', password: "$2a$10$LBfA7zOqvfH0jpie4I6BROxyCFG4L1kKtQhf4V2ShZrtd7aiqxK5m")

10.times do
  s = Submission.create(title: Faker::Lorem.sentence, url: Faker::Internet.url, text: Faker::Lorem.paragraph, user_id: 1)
  5.times do
    Comment.create(text: Faker::Lorem.sentence, user_id: 1, submission_id: s.id)
  end
end

