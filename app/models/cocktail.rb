class Cocktail < ApplicationRecord
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
  has_many :posts
  has_many :users, through: :posts
  has_many :likes, through: :posts

  validates :name, presence: true
  validates :description, presence: true
end
