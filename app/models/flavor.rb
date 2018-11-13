class Flavor < ApplicationRecord
  belongs_to :post
  has_many :post_flavors
end
