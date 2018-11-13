class PostFlavor < ApplicationRecord
  belongs_to :post
  belongs_to :flavor
end
