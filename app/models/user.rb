require 'bcrypt'
class User < ActiveRecord::Base
  include BCrypt
  validates :username, uniqueness: true
  validates :username, presence: true
  validates :email, uniqueness: true
  validates :email, presence: true
  before_create :encrypt

 def self.authenticate(username,password)
    user = User.find_by(username: username)
    if Password.new(user.password) == password
      return user
    else
      return nil
    end
  end

  def encrypt
    self.password = Password.create(self.password)
  end
end
