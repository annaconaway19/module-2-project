class Flavor < ApplicationRecord
  has_many :post_flavors
  has_many :posts, through: :post_flavors
end
