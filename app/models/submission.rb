class Submission < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  validates :title, presence: true
  validates :url, presence: true
  has_many :submission_votes
end
