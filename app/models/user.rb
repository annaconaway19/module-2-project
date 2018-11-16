class User < ApplicationRecord
  
  has_many :posts, foreign_key: :author_id
  has_many :likes, dependent: :destroy
  has_many :likes, foreign_key: :liker_id
  has_many :cocktails, through: :posts

  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 21, message: "Must be 21 years old to sign up"  }
  validates :password, presence: true




end
