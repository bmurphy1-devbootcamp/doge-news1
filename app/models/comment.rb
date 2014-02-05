class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :submission
  validates :text,  presence: true
  has_many :comment_votes
end
