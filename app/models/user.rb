class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :likes
  has_many :likes, foreign_key: :liker_id
  has_many :cocktails, through: :posts

  has_secure_password
  validates :username, uniqueness: true
end
