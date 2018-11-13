class Post < ApplicationRecord
  belongs_to :user
  belongs_to :cocktail
  has_many :post_flavors
  has_many :likes
  accepts_nested_attributes_for :post_flavors

end
