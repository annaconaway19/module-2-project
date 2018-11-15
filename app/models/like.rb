class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user, foreign_key: 'liker_id'



end
