class Post < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  belongs_to :cocktail
  has_many :post_flavors
  has_many :flavors, through: :post_flavors
  has_many :likes
  has_many :users, through: :likes
  accepts_nested_attributes_for :post_flavors

  def self.filter(search_by, search_term)
    if search_term.empty?
      return Post.all
    else
      case search_by
        when 'Cocktail'
          return Post.where( 'Cocktail.name = ?', search_term)
        when 'Flavor'
          return Post.where( 'flavor_id = ?', Flavor.find_by(keyword: search_term.downcase).id )
      end
    end


    # else
    #   return Post.where('? = ?', search_by, search_term.downcase)
    # end
  end

  def self.organize(order_by)
    case order_by
      when 'Newest Posts'
        Post.all.sort_by { |post| post.created_at }
      when 'Oldest Posts'
        Post.all.sort_by { |post| post.created_at }.reverse
      when 'Most Likes'
        Post.all.sort_by { |post| post.likes.count }.reverse
      when 'Least Likes'
        Post.all.sort_by { |post| post.likes.count }
      end
  end
end
