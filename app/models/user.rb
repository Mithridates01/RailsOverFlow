class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :comments, as: :commentable
  has_many :questions
  has_many :votes, as: :votable

end
