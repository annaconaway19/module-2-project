class User < ApplicationRecord
  has_many :posts
  has_many :likes, through: :posts
  has_many :cocktails, through: :posts
end
