class User < ApplicationRecord
  has_many :posts, foreign_key: :author_id
  has_many :likes
  has_many :likes, foreign_key: :liker_id
  has_many :cocktails, through: :posts

  has_secure_password
  validates :username, uniqueness: true

  
      # creates a new like row with post_id and user_id
    def like!(post)
      self.likes.create!(post_id: post.id, liker_id: session[:user_id])
    end

    # destroys a like with matching post_id and user_id
    def unlike!(post)
      like = self.likes.find_by_post_id(post.id)
      like.destroy!
    end

    # returns true of false if a post is liked by user
    def like?(post)
      self.likes.find_by_post_id(post.id)
    end



end
