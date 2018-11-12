class Post < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail
  has_one :flavor
  has_many :likes
end
