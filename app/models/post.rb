class Post < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :cocktail
  has_many :post_flavors
  has_many :flavors, through: :post_flavors
  has_many :likes
  has_many :users, through: :likes
  accepts_nested_attributes_for :post_flavors




end
